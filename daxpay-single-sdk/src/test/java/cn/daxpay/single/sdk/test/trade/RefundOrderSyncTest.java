package cn.daxpay.single.sdk.test.trade;

import cn.daxpay.single.sdk.code.SignTypeEnum;
import cn.daxpay.single.sdk.net.DaxPayConfig;
import cn.daxpay.single.sdk.net.DaxPayKit;
import cn.daxpay.single.sdk.param.trade.refund.RefundSyncParam;
import cn.daxpay.single.sdk.response.DaxPayResult;
import cn.daxpay.single.sdk.model.trade.refund.RefundSyncModel;
import cn.daxpay.single.sdk.util.JsonUtil;
import org.junit.Before;
import org.junit.Test;

/**
 * 退款同步接口
 * @author xxm
 * @since 2024/2/5
 */
public class RefundOrderSyncTest {

    @Before
    public void init() {
        // 初始化支付配置
        DaxPayConfig config = DaxPayConfig.builder()
                .serviceUrl("http://127.0.0.1:10880")
                .signSecret("123456")
                .signType(SignTypeEnum.HMAC_SHA256)
                .build();
        DaxPayKit.initConfig(config);
    }

    @Test
    public void testPay() {
        RefundSyncParam param = new RefundSyncParam();
        param.setRefundNo("DEVR24051020530263000002");
        param.setClientIp("127.0.0.1");
        DaxPayResult<RefundSyncModel> execute = DaxPayKit.execute(param);
        System.out.println(JsonUtil.toJsonStr(execute));

    }

}
