package org.dromara.daxpay.service.param.order.pay;

import cn.bootx.platform.common.mybatisplus.query.function.QueryBetween;
import cn.bootx.platform.core.annotation.QueryParam;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.dromara.daxpay.core.enums.ChannelEnum;
import org.dromara.daxpay.core.enums.PayAllocStatusEnum;
import org.dromara.daxpay.core.enums.PayRefundStatusEnum;
import org.dromara.daxpay.core.enums.PayStatusEnum;
import org.dromara.daxpay.service.common.param.MchAppQuery;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

/**
 * 支付订单查询参数
 * @author xxm
 * @since 2024/1/9
 */
@Data
@QueryParam(type = QueryParam.CompareTypeEnum.LIKE)
@Accessors(chain = true)
@Schema(title = "支付订单查询参数")
public class PayOrderQueryExt  {
                private String bizOrderNo;
                private String bizCode;
                private String orderNo;


        @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
        private LocalDateTime start;
        @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
        private LocalDateTime end;

}
