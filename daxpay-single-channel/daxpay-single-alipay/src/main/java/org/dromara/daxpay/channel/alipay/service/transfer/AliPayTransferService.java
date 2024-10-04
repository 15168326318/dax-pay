package org.dromara.daxpay.channel.alipay.service.transfer;

import org.dromara.daxpay.channel.alipay.code.AliPayCode;
import org.dromara.daxpay.channel.alipay.entity.config.AliPayConfig;
import org.dromara.daxpay.channel.alipay.service.config.AliPayConfigService;
import org.dromara.daxpay.core.enums.TransferPayeeTypeEnum;
import org.dromara.daxpay.core.enums.TransferStatusEnum;
import org.dromara.daxpay.core.exception.TradeFailException;
import org.dromara.daxpay.core.util.PayUtil;
import org.dromara.daxpay.service.bo.trade.TransferResultBo;
import org.dromara.daxpay.service.entity.order.transfer.TransferOrder;
import cn.hutool.core.date.DatePattern;
import cn.hutool.core.date.LocalDateTimeUtil;
import com.alipay.api.domain.AlipayFundAccountQueryModel;
import com.alipay.api.domain.AlipayFundTransUniTransferModel;
import com.alipay.api.domain.Participant;
import com.alipay.api.request.AlipayFundAccountQueryRequest;
import com.alipay.api.request.AlipayFundTransUniTransferRequest;
import com.alipay.api.response.AlipayFundAccountQueryResponse;
import com.alipay.api.response.AlipayFundTransUniTransferResponse;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Objects;

@Slf4j
@Service
@RequiredArgsConstructor
public class AliPayTransferService {

    private final AliPayConfigService aliPayConfigService;

    /**
     * 余额查询接口
     */
    @SneakyThrows
    public void queryAccountAmount(AliPayConfig config, AliPayConfig aliPayConfig){
        AlipayFundAccountQueryModel model = new AlipayFundAccountQueryModel();
        model.setAccountType(AliPayCode.Products.QUERY_ACCOUNT_TYPE);
        model.setAlipayUserId(config.getAlipayUserId());
        AlipayFundAccountQueryRequest request = new AlipayFundAccountQueryRequest();
        request.setBizModel(model);
        AlipayFundAccountQueryResponse response = aliPayConfigService.execute(request);
        System.out.println(response);
    }

    /**
     * 转账接口
     */
    @SneakyThrows
    public TransferResultBo transfer(TransferOrder order){
        TransferResultBo transferInfo = new TransferResultBo();
        // 构造请求参数以调用接口
        AlipayFundTransUniTransferRequest request = new AlipayFundTransUniTransferRequest();
        AlipayFundTransUniTransferModel model = new AlipayFundTransUniTransferModel();

        // 设置转账业务的标题
        model.setOrderTitle(order.getTitle());
        // 设置描述特定的业务场景
        model.setBizScene("DIRECT_TRANSFER");
        // 设置业务产品码
        model.setProductCode("TRANS_ACCOUNT_NO_PWD");
        // 设置转账业务请求的扩展参数
        model.setBusinessParams("{payer_show_name_use_alias: true}");
        // 设置业务备注
        model.setRemark(order.getReason());
        // 设置商家侧唯一订单号
        model.setOutBizNo(order.getTransferNo());
        // 设置订单总金额
        model.setTransAmount(PayUtil.toDecimal(order.getAmount()).toString());
        // 设置收款方信息
        Participant payeeInfo = new Participant();
        // 收款人账号
        payeeInfo.setIdentity(order.getPayeeAccount());
        // 收款人姓名
        payeeInfo.setName(order.getPayeeName());
        // 收款人类型
        String identityType = TransferPayeeTypeEnum.findByCode(order.getPayeeType())
                .getOutCode();
        payeeInfo.setIdentityType(identityType);
        model.setPayeeInfo(payeeInfo);
        model.setRemark(order.getReason());
        request.setBizModel(model);
        AlipayFundTransUniTransferResponse response = aliPayConfigService.execute(request);
        if (!Objects.equals(AliPayCode.ResponseCode.SUCCESS, response.getCode())) {
            log.error("支付宝转账失败: {}", response.getSubMsg());
            throw new TradeFailException("支付宝转账失败: "+response.getSubMsg());
        }
        // 通道转账号
        transferInfo.setOutTransferNo(response.getOrderId());
        // 有完成时间代表处理完成
        if (Objects.equals(response.getStatus(), AliPayCode.ResponseCode.TRANSFER_SUCCESS)){
            // 时间
            String transDate = response.getTransDate();
            LocalDateTime time = LocalDateTimeUtil.parse(transDate, DatePattern.NORM_DATETIME_PATTERN);
            transferInfo.setFinishTime(time).setStatus(TransferStatusEnum.SUCCESS);
        }
        return transferInfo;
    }
}
