package org.dromara.daxpay.service.entity.order.pay;

import lombok.Data;

import java.math.BigDecimal;
@Data
public class PayOrderStatis {

    /** 商户名称 */
    private String bizName;
    /** 商户编码*/
    private String bizCode;

    /**
     * 支付方式, 以最后一次为准
     */
    private String method;

    /** 金额(元) */
    private BigDecimal amount;

    /** 可退金额(元) */
    private BigDecimal refundableBalance;

}
