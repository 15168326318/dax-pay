package org.dromara.daxpay.channel.alipay.strategy;

import cn.bootx.platform.core.exception.ValidationFailedException;
import cn.bootx.platform.core.util.JsonUtil;
import org.dromara.daxpay.channel.alipay.param.pay.AliPayParam;
import org.dromara.daxpay.channel.alipay.service.pay.AliPayService;
import org.dromara.daxpay.core.enums.ChannelEnum;
import org.dromara.daxpay.service.bo.trade.PayResultBo;
import org.dromara.daxpay.service.strategy.AbsPayStrategy;
import cn.hutool.core.util.StrUtil;
import cn.hutool.json.JSONException;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import static org.springframework.beans.factory.config.BeanDefinition.SCOPE_PROTOTYPE;

/**
 * 支付宝支付
 * @author xxm
 * @since 2021/2/27
 */
@Scope(SCOPE_PROTOTYPE)
@Component
@RequiredArgsConstructor
public class AliPayStrategy extends AbsPayStrategy {

    private final AliPayService aliPayService;

    private AliPayParam aliPayParam;

     @Override
    public String getChannel() {
        return ChannelEnum.ALI.getCode();
    }

    /**
     * 支付前操作
     */
    @Override
    public void doBeforePayHandler() {
        try {
            // 支付宝参数验证
            String channelParam = this.getPayParam().getExtraParam();
            if (StrUtil.isNotBlank(channelParam)) {
                this.aliPayParam = JsonUtil.toBean(channelParam, AliPayParam.class);
            }
            else {
                this.aliPayParam = new AliPayParam();
            }
        }
        catch (JSONException e) {
            throw new ValidationFailedException("支付参数错误");
        }
        // 支付宝相关校验
        aliPayService.validation(this.getPayParam());
    }

    /**
     * 发起支付操作
     */
    @Override
    public PayResultBo doPayHandler() {
        return aliPayService.pay(this.getOrder(), this.aliPayParam);
    }

}
