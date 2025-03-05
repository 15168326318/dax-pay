package org.dromara.daxpay.service.task;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.dromara.daxpay.core.enums.StoreEnum;
import org.dromara.daxpay.service.dao.order.pay.PayOrderManager;
import org.dromara.daxpay.service.dao.order.refund.RefundOrderManager;
import org.dromara.daxpay.service.dao.order.transfer.TransferOrderManager;
import org.dromara.daxpay.service.entity.order.pay.PayOrder;
import org.dromara.daxpay.service.entity.order.refund.RefundOrder;
import org.dromara.daxpay.service.entity.order.transfer.TransferOrder;
import org.dromara.daxpay.service.service.assist.PaymentAssistService;
import org.dromara.daxpay.service.service.trade.pay.PayAssistService;
import org.dromara.daxpay.service.service.trade.pay.PaySyncService;
import org.dromara.daxpay.service.service.trade.refund.RefundSyncService;
import org.dromara.daxpay.service.service.trade.transfer.TransferSyncService;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;

/**
 * 交易订单同步定时任务
 * @author xxm
 * @since 2024/8/29
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class OrderSyncTaskService {

    private final PayOrderManager payOrderManager;
    private final PaySyncService paySyncService;
    private final RefundOrderManager refundOrderManager;
    private final RefundSyncService refundSyncService;
    private final TransferOrderManager transferOrderManager;
    private final TransferSyncService transferSyncService;
    private final PaymentAssistService paymentAssistService;
    private final PayAssistService payAssistService;

    /**
     *  自动创建支付订单
     */
    @Scheduled(cron = "0 0 1 * * ?")
    public void addOrderTask(){
        // 从数据库查询获取超时的任务对象
        Arrays.stream(StoreEnum.values()).forEach(a -> {
            payAssistService.createPayOrders(LocalDateTime.now(),LocalDateTime.now().plusHours(1),a);
        });

    }


    /**
     * 退款定时同步任务 一分钟一次, 查询一分钟之前退款中的订单进行同步
     * 10分钟内一分钟一次
     * 一天内一小时一次
     * 超过一天一天一次
     *
     */
//    @Scheduled(cron = "0 */1 * * * ?")
    public void refundSyncTask(){
        // 查询退款中的退款订单
        List<RefundOrder> list = refundOrderManager.findAllByProgress();
        for (RefundOrder refundOrder : list) {
            try {
                // 调用同步方法
                paymentAssistService.initMchApp(refundOrder.getAppId());
                refundSyncService.syncRefundOrder(refundOrder);
            } catch (Exception e) {
                log.warn("退款执行同步失败, ID: {}, 退款号: {}",refundOrder.getId(), refundOrder.getRefundNo(), e);
            }
        }
    }

    /**
     * 转账订单同步, 一分钟一次, 获取一分钟之前转账中的订单
     */
//    @Scheduled(cron = "0 */1 * * * ?")
    public void transferSyncTask(){
        List<TransferOrder> list = transferOrderManager.findAllByProgress();
        for (var transferOrder : list) {
            try {
                // 调用同步方法
                paymentAssistService.initMchApp(transferOrder.getAppId());
                transferSyncService.syncTransferOrder(transferOrder);
            } catch (Exception e) {
                log.warn("转账执行同步失败, ID: {}, 转账号: {}",transferOrder.getId(),transferOrder.getTransferNo(), e);
            }
        }
    }

}
