package org.dromara.daxpay.service.service.order.pay;

import cn.bootx.platform.common.mybatisplus.util.MpUtil;
import cn.bootx.platform.core.exception.ValidationFailedException;
import cn.bootx.platform.core.rest.param.PageParam;
import cn.bootx.platform.core.rest.result.PageResult;
import cn.hutool.core.date.LocalDateTimeUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import lombok.Data;
import org.apache.commons.lang3.StringUtils;
import org.dromara.daxpay.core.enums.PayStatusEnum;
import org.dromara.daxpay.core.exception.TradeNotExistException;
import org.dromara.daxpay.core.param.trade.pay.QueryPayParam;
import org.dromara.daxpay.core.result.trade.pay.PayOrderResult;
import org.dromara.daxpay.core.util.TradeNoGenerateUtil;
import org.dromara.daxpay.service.convert.order.pay.PayOrderConvert;
import org.dromara.daxpay.service.dao.order.pay.PayOrderManager;
import org.dromara.daxpay.service.entity.order.pay.PayOrder;
import org.dromara.daxpay.service.param.order.pay.PayOrderQuery;
import org.dromara.daxpay.service.param.order.pay.PayOrderQueryExt;
import org.dromara.daxpay.service.param.report.TradeReportQuery;
import org.dromara.daxpay.service.result.order.pay.PayOrderVo;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * 支付查询服务
 * @author xxm
 * @since 2024/1/16
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class PayOrderQueryService {
    private final PayOrderManager payOrderManager;

    /**
     * 分页
     */
    public PageResult<PayOrderVo> page(PageParam pageParam, PayOrderQuery param) {
        Page<PayOrder> page = payOrderManager.page(pageParam, param);
        return MpUtil.toPageResult(page);
    }

    /**
     * 统计
     */
    public List<PayOrder> statistics(PayOrderQueryExt payOrder) {

        return payOrderManager.statistics(payOrder);
    }

    /**
     * 首页曲线图，当前月和上一个月的比较
     */
    public List<Moneys> moneyStatistics() {
//        [
//        {
//            smooth: true,
//                    data: [
//            111, 222, 4000, 18000, 33333, 55555, 66666, 33333, 14000, 36000, 66666, 44444, 22222,
//                    11111, 4000, 2000, 500, 333, 222, 111,
//          ],
//            type: 'line',
//                    areaStyle: {},
//            itemStyle: {
//                color: '#5ab1ef',
//            },
//        },
//        {
//            smooth: true,
//                    data: [
//            33, 66, 88, 333, 3333, 5000, 18000, 3000, 1200, 13000, 22000, 11000, 2221, 1201, 390,
//                    198, 60, 30, 22, 11,
//          ],
//            type: 'line',
//                    areaStyle: {},
//            itemStyle: {
//                color: '#019680',
//            },
//        },
//      ]
        PayOrderQueryExt payOrder = new PayOrderQueryExt();
        //当月
        payOrder.setStart(TradeNoGenerateUtil.getFirstDayOfMonth(LocalDate.now()));
        payOrder.setEnd(TradeNoGenerateUtil.getLastDayOfMonth(LocalDate.now()));
        List<PayOrder> payOrders = payOrderManager.moneyStatistics(payOrder);
        List<Moneys> moneys = new ArrayList<>();
        Moneys moneysFirst = new Moneys();
        List<BigDecimal> first = payOrders.stream().map(PayOrder::getAmount).collect(Collectors.toList());
        moneysFirst.setData(first);
        moneys.add(moneysFirst);
        //上一个月
        payOrder.setStart(TradeNoGenerateUtil.getFirstDayOfMonth(LocalDate.now().minusMonths(1)));
        payOrder.setEnd(TradeNoGenerateUtil.getLastDayOfMonth(LocalDate.now().minusMonths(1)));
        payOrders = payOrderManager.moneyStatistics(payOrder);
        List<BigDecimal> secend = payOrders.stream().map(PayOrder::getAmount).collect(Collectors.toList());
        Moneys moneysSencode = new Moneys();
        if(first.size() > secend.size()) {
            int count = first.size() - secend.size();
            for(int i = 0;i < count ;i ++) {
                secend.add(new BigDecimal(0));
            }
            moneysSencode.setData(secend);
        } else if (first.size() < secend.size()) {
            moneysSencode.setData(secend.subList(0,first.size()));
        } else {
            moneysSencode.setData(secend);
        }
        moneys.add(moneysSencode);

        return moneys;
    }


    /**
     * 根据id查询
     */
    public Optional<PayOrder> findById(Long orderId) {
        return payOrderManager.findById(orderId);
    }

    /**
     * 根据订单号查询
     */
    public Optional<PayOrder> findByOrderNo(String orderNo) {
        return payOrderManager.findByOrderNo(orderNo);
    }

    /**
     * 根据商户订单号查询
     */
    public Optional<PayOrder> findByBizOrderNo(String bizOrderNo, String appId) {
        return payOrderManager.findByBizOrderNo(bizOrderNo, appId);
    }

    /**
     * 根据订单号或商户订单号查询
     */
    public Optional<PayOrder> findByBizOrOrderNo(String orderNo, String bizOrderNo, String appId) {
        if (Objects.nonNull(orderNo)){
            return this.findByOrderNo(orderNo);
        }
        if (Objects.nonNull(bizOrderNo)){
            return this.findByBizOrderNo(bizOrderNo,appId);
        }
        return Optional.empty();
    }

    /**
     * 查询支付记录
     */
    public PayOrderResult queryPayOrder(QueryPayParam param) {
        // 校验参数
        if (StrUtil.isBlank(param.getBizOrderNoeNo()) && Objects.isNull(param.getOrderNo())){
            throw new ValidationFailedException("业务号或支付单ID不能都为空");
        }
        // 查询支付单
        return this.findByBizOrOrderNo(param.getOrderNo(), param.getBizOrderNoeNo(),param.getAppId())
                .map(PayOrderConvert.CONVERT::toResult)
                .orElseThrow(() -> new TradeNotExistException("支付订单不存在"));
    }


    /**
     * 查询支付总金额
     */
    public BigDecimal getTotalAmount(PayOrderQuery param) {
        BigDecimal  total = payOrderManager.getTotalAmount(param);
        return total == null?new BigDecimal(0):total;
    }

    @Data
    public class  Moneys {
        List<BigDecimal> data ;
    }
}
