package org.dromara.daxpay.service.service.trade.pay;

import cn.bootx.platform.core.exception.ValidationFailedException;
import cn.bootx.platform.core.rest.Res;
import cn.bootx.platform.core.util.BigDecimalUtil;
import cn.bootx.platform.core.util.DateTimeUtil;
import cn.bootx.platform.starter.redis.delay.service.DelayJobService;
import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.StrUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.dromara.daxpay.core.enums.*;
import org.dromara.daxpay.core.exception.AmountExceedLimitException;
import org.dromara.daxpay.core.exception.TradeStatusErrorException;
import org.dromara.daxpay.core.param.trade.pay.PayParam;
import org.dromara.daxpay.core.result.trade.pay.PayResult;
import org.dromara.daxpay.core.util.PayUtil;
import org.dromara.daxpay.core.util.TradeNoGenerateUtil;
import org.dromara.daxpay.service.bo.trade.PayResultBo;
import org.dromara.daxpay.service.code.DaxPayCode;
import org.dromara.daxpay.service.common.AppConfig;
import org.dromara.daxpay.service.common.context.MchAppLocal;
import org.dromara.daxpay.service.common.local.PaymentContextLocal;
import org.dromara.daxpay.service.dao.order.pay.PayOrderManager;
import org.dromara.daxpay.service.entity.order.pay.PayOrder;
import org.dromara.daxpay.service.param.order.pay.PayOrderQuery;
import org.dromara.daxpay.service.service.order.pay.PayOrderQueryService;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.*;

/**
 * 支付支持服务
 * @author xxm
 * @since 2023/12/24
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class PayAssistService implements InitializingBean {

    private static  int total = 1;

    private final PayOrderManager payOrderManager;
    private final PayOrderQueryService payOrderQueryService;
    private final PayOrderQueryService queryService;
    private final PaySyncService paySyncService;
    private final DelayJobService delayJobService;

    @Autowired
    private AppConfig appConfig;
    private  Map<String,String> mapmin = new HashMap<>();
    private  Map<String,String> mapmax = new HashMap<>();
    /**
     * 创建支付订单并保存, 返回支付订单
     */
    @Transactional(rollbackFor = Exception.class)
    public PayOrder createPayOrder(PayParam payParam) {
        // 订单超时时间
        LocalDateTime expiredTime = this.getExpiredTime(payParam);
        // 构建支付订单对象
        PayOrder order = new PayOrder();
        BeanUtil.copyProperties(payParam, order);
        order.setOrderNo(TradeNoGenerateUtil.pay())
                .setStatus(PayStatusEnum.PROGRESS.getCode())
                .setRefundStatus(PayRefundStatusEnum.NO_REFUND.getCode())
                .setExpiredTime(expiredTime)
                .setRefundableBalance(payParam.getAmount());
        // 如果支持分账, 设置分账状态为待分账
        if (order.getAllocation()) {
            order.setAllocStatus(PayAllocStatusEnum.WAITING.getCode());
        }
        payOrderManager.save(order);
        // 注册支付超时任务
        delayJobService.registerByTransaction(order.getId(), DaxPayCode.Event.ORDER_PAY_TIMEOUT, order.getExpiredTime());
        return order;
    }

    @Async
    public void createPayOrders(LocalDateTime startTime,LocalDateTime endTime,StoreEnum storeEnum) {
        LocalDateTime currentTime =  startTime;
        List<PayOrder> list = new ArrayList<>();

        //每天订单数
        int count =0;
        while (currentTime.isBefore(endTime)) {
            PayOrder order = new PayOrder();
            int quantity = new Random().nextInt(3) + 1;
            int  index = new Random().nextInt(productEnum.values().length);
//            int  bizIndex = new Random().nextInt(StoreEnum.values().length);
            order.setBizOrderNo(TradeNoGenerateUtil.store())
                    .setBizName(storeEnum.getName())
                    .setBizCode(storeEnum.getCode())
                    .setQuantity(quantity + "")//数量
                    .setTitle(productEnum.values()[index].getName())//产品
                    .setAmount(BigDecimal.valueOf(productEnum.values()[index].getPrivt().doubleValue() * quantity))//金额
                    .setOrderNo(TradeNoGenerateUtil.pay())
                    .setStatus(PayStatusEnum.SUCCESS.getCode())
                    .setRefundStatus(PayRefundStatusEnum.NO_REFUND.getCode())
                    .setChannel(ChannelEnum.values()[new Random().nextInt(ChannelEnum.values().length)].getCode())
                    .setMethod(PayMethodEnum.values()[new Random().nextInt(PayMethodEnum.values().length)].getCode())
                    .setReqTime(LocalDateTime.now())
                    .setRefundableBalance(BigDecimal.valueOf(0));
            order.setAllocStatus(PayAllocStatusEnum.IGNORE.getCode());
            order.setCreateTime(TradeNoGenerateUtil.generateRandomTime(currentTime.toLocalDate()));
            order.setExpiredTime(order.getCreateTime().plus(Duration.ofHours(1)));
            order.setReqTime(order.getCreateTime());
            order.setLastModifiedTime(order.getCreateTime());
            order.setVersion(3);
            //判断是否已经开店
            if(storeEnum.getDate().isBefore(currentTime.toLocalDate())) {
                list.add(order);
            }

            count ++;
            if(list.size() > 100) {
                payOrderManager.saveBatch(list, list.size());
                list.clear();
            }
            //生意高峰期的月份
            if(count > getTranceCount(currentTime.toLocalDate(),storeEnum.getCode(),mapmin,mapmax)) { //1000 ,1800
                currentTime = currentTime.plusDays(1);
                count = 0;
                //提现
                final LocalDateTime createTime = TradeNoGenerateUtil.getWorkday(currentTime);
                if (createTime == null) continue;
                BigDecimal tjmoney = this.getTjMoney(new PayOrderQuery(storeEnum.getCode()));
                //可提现金额必须大于13万才提现, 并要留9万
                if (tjmoney.doubleValue() > 130000) {
                    PayOrder payOrder = new PayOrder();
                    payOrder.setBizOrderNo(TradeNoGenerateUtil.refund())
                            .setBizName(storeEnum.getName())
                            .setBizCode(storeEnum.getCode())
                            .setTitle(productEnum.values()[index].getName())//产品
                            .setAmount(tjmoney.subtract(new BigDecimal(90000)))//提现金额
                            .setOrderNo(TradeNoGenerateUtil.refund())
                            .setStatus(PayStatusEnum.CASHOUT.getCode())
                            .setRefundStatus(PayRefundStatusEnum.NO_REFUND.getCode())
                            .setChannel(ChannelEnum.values()[new Random().nextInt(ChannelEnum.values().length)].getCode())
                            .setMethod(PayMethodEnum.values()[new Random().nextInt(PayMethodEnum.values().length)].getCode())
                            .setExpiredTime(LocalDateTime.now().plus(Duration.ofHours(1)))
                            .setReqTime(LocalDateTime.now())
                            .setRefundableBalance(BigDecimal.valueOf(0));
                    payOrder.setAllocStatus(PayAllocStatusEnum.IGNORE.getCode());
                    payOrder.setCreateTime(createTime);
                    order.setLastModifiedTime(order.getCreateTime());
                    payOrder.setVersion(3);
                    //判断是否已经开店
                    if (storeEnum.getDate().plusDays(5).isBefore(createTime.toLocalDate())) {
                        payOrderManager.save(payOrder);
                    }
                }
            }
            total ++;
        }
    }
//
//    public void createPayOrders(LocalDateTime startTime,LocalDateTime endTime) {
//        LocalDateTime currentTime =  startTime;
//        List<PayOrder> list = new ArrayList<>();
//
//        //每天订单数
//        int count =0;
//        while (currentTime.isBefore(endTime)) {
//            PayOrder order = new PayOrder();
//            int quantity = new Random().nextInt(3) + 1;
//            int  index = new Random().nextInt(productEnum.values().length);
//            int  bizIndex = new Random().nextInt(StoreEnum.values().length);
//            order.setBizOrderNo(TradeNoGenerateUtil.store())
//                    .setBizName(StoreEnum.values()[bizIndex].getName())
//                    .setBizCode(StoreEnum.values()[bizIndex].getCode())
//                    .setQuantity(quantity + "")//数量
//                    .setTitle(productEnum.values()[index].getName())//产品
//                    .setAmount(BigDecimal.valueOf(productEnum.values()[index].getPrivt().doubleValue() * quantity))//金额
//                    .setOrderNo(TradeNoGenerateUtil.pay())
//                    .setStatus(PayStatusEnum.SUCCESS.getCode())
//                    .setRefundStatus(PayRefundStatusEnum.NO_REFUND.getCode())
//                    .setChannel(ChannelEnum.values()[new Random().nextInt(ChannelEnum.values().length)].getCode())
//                    .setMethod(PayMethodEnum.values()[new Random().nextInt(PayMethodEnum.values().length)].getCode())
//                    .setReqTime(LocalDateTime.now())
//                    .setRefundableBalance(BigDecimal.valueOf(0));
//            order.setAllocStatus(PayAllocStatusEnum.IGNORE.getCode());
//            order.setCreateTime(TradeNoGenerateUtil.generateRandomTime(currentTime.toLocalDate()));
//            order.setExpiredTime(order.getCreateTime().plus(Duration.ofHours(1)));
//            order.setReqTime(order.getCreateTime());
//            order.setVersion(3);
//            //判断是否已经开店
//            if(StoreEnum.values()[bizIndex].getDate().isBefore(currentTime.toLocalDate())) {
//                list.add(order);
//            }
//
//            count ++;
//            if(list.size() > 100) {
//                payOrderManager.saveBatch(list, list.size());
//                list.clear();
//            }
//            //生意高峰期的月份
//            if(count > getTranceCount(currentTime.toLocalDate())) { //1000 ,1800
//                currentTime = currentTime.plusDays(1);
//                count = 0;
//                //提现
//                final LocalDateTime createTime = TradeNoGenerateUtil.getWorkday(currentTime);
//                if (createTime == null)  continue;
//                Arrays.stream(StoreEnum.values()).forEach(a -> {
//                    BigDecimal  tjmoney = this.getTjMoney(new PayOrderQuery(a.getCode()));
//                    //大于8万才提现
//                    if(tjmoney.doubleValue() > 80000) {
//                        PayOrder payOrder = new PayOrder();
//                        payOrder.setBizOrderNo(TradeNoGenerateUtil.refund())
//                                .setBizName(a.getName())
//                                .setBizCode(a.getCode())
//                                .setTitle(productEnum.values()[index].getName())//产品
//                                .setAmount(tjmoney.subtract(new BigDecimal(80000)))//提现金额
//                                .setOrderNo(TradeNoGenerateUtil.refund())
//                                .setStatus(PayStatusEnum.CASHOUT.getCode())
//                                .setRefundStatus(PayRefundStatusEnum.NO_REFUND.getCode())
//                                .setChannel(ChannelEnum.values()[new Random().nextInt(ChannelEnum.values().length)].getCode())
//                                .setMethod(PayMethodEnum.values()[new Random().nextInt(PayMethodEnum.values().length)].getCode())
//                                .setExpiredTime(LocalDateTime.now().plus(Duration.ofHours(1)))
//                                .setReqTime(LocalDateTime.now())
//                                .setRefundableBalance(BigDecimal.valueOf(0));
//                        payOrder.setAllocStatus(PayAllocStatusEnum.IGNORE.getCode());
//                        payOrder.setCreateTime(createTime);
//                        payOrder.setVersion(3);
//                        //判断是否已经开店
//                        if (a.getDate().plusDays(5).isBefore(createTime.toLocalDate())) {
//                            payOrderManager.save(payOrder);
//                        }
//                    }
//                });
//            }
//            total ++;
//        }
//    }

    private BigDecimal  getTjMoney(PayOrderQuery param) {
            //提现不需要按时间
        param.setCreateTime(null);
        param.setStatus(PayStatusEnum.CASHOUT.getCode());
        BigDecimal amount = queryService.getTotalAmount(param);
        param.setStatus(PayStatusEnum.SUCCESS.getCode());
        BigDecimal totalAmount = queryService.getTotalAmount(param);
        if(totalAmount == null || amount ==null) {
            return new BigDecimal(0);
        } else {
            return totalAmount.subtract(amount);
        }
    }

    /**
     * 根据新传入的支付订单更新订单信息
     */
    @Transactional(rollbackFor = Exception.class)
    public void updatePayOrder(PayParam payParam,PayOrder order) {
        // 订单信息
        order.setAllocation(payParam.getAllocation())
                .setNotifyUrl(payParam.getNotifyUrl())
                .setReturnUrl(payParam.getReturnUrl())
                .setAttach(payParam.getAttach())
                .setClientIp(payParam.getClientIp())
                .setReqTime(payParam.getReqTime())
                .setChannel(payParam.getChannel())
                .setMethod(payParam.getMethod())
                .setStatus(PayStatusEnum.PROGRESS.getCode())
                .setExtraParam(payParam.getExtraParam());
        if (!order.getAllocation()) {
            order.setAllocStatus(null);
        }
        payOrderManager.updateById(order);
    }

    /**
     * 校验支付状态，支付成功则返回，支付失败则抛出对应的异常
     */
    public PayOrder getOrderAndCheck(PayParam param) {
        // 根据订单查询支付记录
        PayOrder payOrder = payOrderQueryService.findByBizOrderNo(param.getBizOrderNo(), param.getAppId())
                .orElse(null);
        if (Objects.nonNull(payOrder)) {
            // 待支付
            if (Objects.equals(payOrder.getStatus(), PayStatusEnum.PROGRESS.getCode())) {
                // 如果支付超时, 触发订单同步操作, 同时抛出异常
                if (Objects.nonNull(payOrder.getExpiredTime()) && DateTimeUtil.ge(LocalDateTime.now(), payOrder.getExpiredTime())) {
                    paySyncService.syncPayOrder(payOrder);
                    throw new TradeStatusErrorException("支付已超时，请重新确认支付状态");
                }
                return payOrder;
            }
            // 已经支付状态
            if (PayStatusEnum.SUCCESS.getCode()
                    .equals(payOrder.getStatus())) {
                throw new TradeStatusErrorException("已经支付成功，请勿重新支付");
            }
            // 支付失败类型状态
            List<String> tradesStatus = List.of(
                    PayStatusEnum.FAIL.getCode(),
                    PayStatusEnum.CLOSE.getCode(),
                    PayStatusEnum.CANCEL.getCode());
            if (tradesStatus.contains(payOrder.getStatus())) {
                throw new TradeStatusErrorException("支付失败或已经被关闭");
            }
            // 退款类型状态
            if (Objects.equals(payOrder.getRefundStatus(), PayRefundStatusEnum.REFUNDING.getCode())) {
                throw new TradeStatusErrorException("该订单处于退款状态");
            }
            // 其他状态直接抛出兜底异常
            throw new TradeStatusErrorException("订单不是待支付状态，请重新确认订单状态");
        }
        return null;
    }

    /**
     * 检验订单是否超过限额
     */
    public void validationLimitAmount(PayParam payParam) {
        MchAppLocal mchAppInfo = PaymentContextLocal.get()
                .getMchAppInfo();
        // 总额校验
        if (BigDecimalUtil.isGreaterThan(payParam.getAmount(),mchAppInfo.getLimitAmount())) {
            throw new AmountExceedLimitException("支付金额超过限额");
        }
    }


    /**
     * 根据支付订单构建支付结果
     *
     * @param payOrder 支付订单
     * @param result 支付结果业务类
     * @return PayResult 支付结果
     */
    public PayResult buildResult(PayOrder payOrder, PayResultBo result) {
        PayResult payResult = new PayResult()
                .setBizOrderNo(payOrder.getBizOrderNo())
                .setOrderNo(payOrder.getOrderNo())
                .setStatus(payOrder.getStatus());

        // 设置支付参数
        if (StrUtil.isNotBlank(result.getPayBody())) {
            payResult.setPayBody(result.getPayBody());
        }
        return payResult;
    }

    /**
     * 获取支付订单超时时间
     */
    private LocalDateTime getExpiredTime(PayParam payParam) {
        MchAppLocal mchAppLocal = PaymentContextLocal.get().getMchAppInfo();
        // 支付参数传入
        if (Objects.nonNull(payParam.getExpiredTime())) {
            return payParam.getExpiredTime();
        }
        // 根据商户应用配置计算出时间
        return PayUtil.getPaymentExpiredTime(mchAppLocal.getOrderTimeout());
    }

    /**
     * 校验订单超时时间是否正常
     */
    public void validationExpiredTime(PayParam payParam) {
        LocalDateTime expiredTime = this.getExpiredTime(payParam);
        if (Objects.nonNull(expiredTime) && DateTimeUtil.lt(expiredTime,LocalDateTime.now())) {
            throw new ValidationFailedException("支付超时时间设置有误, 请检查!");
        }
    }

    private int getTranceCount(LocalDate currentDate,String code,Map<String,String> min ,Map<String,String> max)  {
        if(Arrays.asList(3,4,5,6,7,8,9,10,11).contains(currentDate.getMonthValue())) {
            return Integer.parseInt(max.get(code));
        } else {
            return  Integer.parseInt(min.get(code));
        }
    }
    private int getTranceCount(LocalDate currentDate)  {
        if(Arrays.asList(3,4,5,6,7,8,9,10,11).contains(currentDate.getMonthValue())) {
            return  2400;
        } else {
            return 1220;
        }
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        appConfig.getServers().forEach(a -> {
            String[] mm = a.split("@");
            mapmin.put(mm[0],mm[1]);
            mapmax.put(mm[0],mm[2]);
        });
    }
}
