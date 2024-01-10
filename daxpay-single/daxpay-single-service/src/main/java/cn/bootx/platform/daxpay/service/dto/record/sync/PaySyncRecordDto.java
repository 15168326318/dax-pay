package cn.bootx.platform.daxpay.service.dto.record.sync;

import cn.bootx.platform.common.core.rest.dto.BaseDto;
import cn.bootx.platform.daxpay.code.PayChannelEnum;
import cn.bootx.platform.daxpay.code.PaySyncStatusEnum;
import cn.bootx.table.modify.annotation.DbColumn;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.time.LocalDateTime;

/**
 * 支付同步记录
 * @author xxm
 * @since 2023/7/14
 */
@EqualsAndHashCode(callSuper = true)
@Data
@Accessors(chain = true)
@Schema(title = "支付同步订单")
public class PaySyncRecordDto extends BaseDto {

    /** 支付记录id */
    @Schema(description = "支付记录id")
    private Long paymentId;

    @Schema(description = "业务号")
    private String businessNo;

    /**
     * 同步通道
     * @see PayChannelEnum#getCode()
     */
    @Schema(description = "同步通道")
    private String asyncChannel;

    /** 同步消息 */
    @Schema(description = "同步消息")
    private String syncInfo;

    /**
     * 同步状态
     * @see PaySyncStatusEnum
     */
    @Schema(description = "同步状态")
    private String status;

    /**
     * 支付单如果状态不一致, 是否进行修复
     */
    @DbColumn(comment = "是否进行修复")
    private boolean repairOrder;

    @Schema(description = "错误消息")
    private String errorMsg;

    /** 同步时间 */
    @Schema(description = "同步时间")
    private LocalDateTime syncTime;

    /** 客户端IP */
    @Schema(description = "客户端IP")
    private String clientIp;
}
