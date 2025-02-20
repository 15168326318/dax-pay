package org.dromara.daxpay.service.dao.order.pay;

import org.dromara.daxpay.service.entity.order.pay.PayOrder;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.github.yulichang.base.MPJBaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.dromara.daxpay.service.param.order.pay.PayOrderQuery;
import org.dromara.daxpay.service.param.report.TradeReportQuery;
import org.dromara.daxpay.service.result.report.TradeReportResult;

import java.math.BigDecimal;
import java.util.List;

/**
 *
 * @author xxm
 * @since 2024/6/27
 */
@Mapper
public interface PayOrderMapper extends MPJBaseMapper<PayOrder> {


    @Select("select sum(amount) from pay_order ${ew.customSqlSegment}")
    BigDecimal getTotalAmount(@Param(Constants.WRAPPER) QueryWrapper<PayOrder> param);



    /**
     * 支付通道
     */
    @Select("""
         select * ,t.amount - t.refundableBalance as method from (
          SELECT biz_name , SUM(CASE WHEN status = 'success' THEN amount ELSE 0 END) amount
              ,SUM(CASE WHEN status = 'cashout' THEN amount ELSE 0 END) refundableBalance FROM pay_order   ${ew.customSqlSegment}
            ) t
    """)
    List<PayOrder> statistics(@Param(Constants.WRAPPER) QueryWrapper<PayOrderQuery> param);
}
