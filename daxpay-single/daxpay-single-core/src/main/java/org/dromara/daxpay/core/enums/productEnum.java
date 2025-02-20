package org.dromara.daxpay.core.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.math.BigDecimal;

/**
 * 产品
 * 字典 allocation_status
 * @author xxm
 * @since 2024/4/7
 */
@Getter
@AllArgsConstructor
public enum productEnum {

    ST0001(new BigDecimal("10.6"), "【T米福利】美式"),
    ST0002(new BigDecimal("15.9"), "【T米福利】燕麦拿铁"),
    ST0003(new BigDecimal("22.9"), "【T米福利】超值暖食套餐"),
    ST0004(new BigDecimal("25.6"), "【T米福利】优选暖食三件套"),
    ST0000(new BigDecimal("12.6"), "【T米福利】好食成双"),
    ST0005(new BigDecimal("20.8"), "海运蛇果美式"),
    ST0006(new BigDecimal("18.7"), "鲜萃红茶拿铁（不含咖啡）"),
    ST0007(new BigDecimal("20.9"), "黄油贝果拿铁"),
    ST0008(new BigDecimal("30.9"), "【午餐盒】轻体贝果堡3件套"),
    ST0009(new BigDecimal("25.9"), "芝士流心蛋暖食套餐"),
    ST00090(new BigDecimal("12.8"), "鲜萃黑咖·深度烘焙"),
    ST0010(new BigDecimal("16.5"), "鲜萃黑咖·中度烘焙"),
    ST0011(new BigDecimal("19.8"), "鲜萃红茶"),
    ST0012(new BigDecimal("22.9"), "鲜萃红茶拿铁（不含咖啡）"),
    ST0013(new BigDecimal("22.8"), "拿铁"),
    ST0014(new BigDecimal("23.6"), "果咖美式"),
    ST0015(new BigDecimal("20.9"), "鸿运蛇果美式"),
    ST0016(new BigDecimal("22.8"), "首罗旺斯番茄美式"),
    ST0017(new BigDecimal("21.8"), "山楂美式"),
    ST0018(new BigDecimal("20.6"), "车厘子美式"),
    ST0019(new BigDecimal("21.9"), "黄油贝果拿铁"),
    ST0020(new BigDecimal("23.6"), "澳白"),
    ST0021(new BigDecimal("25.6"), "燕麦澳白"),
    ST0022(new BigDecimal("21.9"), "香烤红薯燕麦拿铁"),
    ST0023(new BigDecimal("25.0"), "微醺苹果白巧拿铁"),
    ST00230(new BigDecimal("24.92"), "若烧乳酪可颂套餐"),
    ST0024(new BigDecimal("25.88"), "芝士流心蛋暖食套餐"),
    ST0025(new BigDecimal("25.8"), "黑麦坚果多多贝果套餐"),
    ST0026(new BigDecimal("24.8"), "内桂提子贝果套餐"),
    ST0027(new BigDecimal("25.8"), "花环贝果暖融套餐"),
    ST0028(new BigDecimal("30.9"), "微笑贝果：蓝莓芝士套餐"),
    ST0029(new BigDecimal("30.76"), "浓情微笑低糖黑巧套餐"),
    ST0030(new BigDecimal("31.8"), "猛犸贝果：芋泥啶啶套餐"),
    ST0031(new BigDecimal("14.8"), "满格芝芝华夫"),
    ST0032(new BigDecimal("16.9"), "黑麦坚果多多贝果"),
    ST0033(new BigDecimal("16.9"), "肉桂提子贝果"),
    ST0034(new BigDecimal("16.8"), "全麦贝果"),
    ST0035(new BigDecimal("16.8"), "碱水红豆贝果"),
    ST0036(new BigDecimal("15.60"), "花环贝果·五重缤纷果干"),
    ST0037(new BigDecimal("20.80"), "加倍可拿铁"),
    ST0038(new BigDecimal("23.80"), "加倍拿铁"),
    ST0039(new BigDecimal("20.90"), "加倍抹茶拿铁"),
    ST0040(new BigDecimal("20.90"), "加倍枫糖拿铁"),
    ST0041(new BigDecimal("24.80"), "蒙特利尔风味小肉丸"),
    ST0042(new BigDecimal("16.90"), "轻体贝果4选1"),
    ST0043(new BigDecimal("21.80"), "微笑贝果3选1"),
    ST0044(new BigDecimal("22.80"), "招牌美式咖啡5选1"),
    ST0045(new BigDecimal("23.9"), "肉桂提子贝果套餐"),
    ST0046(new BigDecimal("30.9"), "经典拿铁咖啡5选1"),
    ST00460(new BigDecimal("25.8"), "经典拿铁咖啡3选1"),
    ST1006(new BigDecimal("25.6"), "蛋香牛肉芝士可颂套餐");

    final BigDecimal privt;
    final String name;

}
