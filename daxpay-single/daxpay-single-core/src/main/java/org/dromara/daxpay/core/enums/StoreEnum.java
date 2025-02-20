package org.dromara.daxpay.core.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 商店
 * 字典 allocation_status
 * @author xxm
 * @since 2024/4/7
 */
@Getter
@AllArgsConstructor
public enum StoreEnum {

    ST0001("st0001", "杭州解百湖滨店"),
    ST0002("st0002", "杭州国贸金融店"),
    ST0003("st0003", "杭州云栖鹏辉店"),
    ST0004("st0004", "杭州滨江莲荷里店"),
    ST0005("st0005", "义乌环球大厦店"),
    ST0006("st0006", "义乌北苑加油站店");

    final String code;
    final String name;

}
