package org.dromara.daxpay.core.enums;

import cn.hutool.core.util.StrUtil;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.stream.Collectors;

/**
 * 商店
 * 字典 allocation_status
 * @author xxm
 * @since 2024/4/7
 */
@Getter
@AllArgsConstructor
public enum StoreEnum {

    ST0001("st0001", "杭州解百湖滨店",LocalDate.of(2024,4,28)),
    ST0002("st0002", "杭州国贸金融店",LocalDate.of(2025,1,3)),
    ST0003("st0003", "杭州云栖鹏辉店",LocalDate.of(2024,2,23)),
    ST0004("st0004", "杭州滨江莲荷里店",LocalDate.of(2024,6,4)),
    ST0005("st0005", "义乌环球大厦店",LocalDate.of(2024,2,23)),
    ST0006("st0006", "义乌北苑加油站店",LocalDate.of(2024,1,24));

    final String code;
    final String name;
    /**
     * 开店时间
     */
    final LocalDate date;

    public static StoreEnum getByCode(String code) {
        if (StrUtil.isEmpty(code)) {
            return null;
        }
        for (StoreEnum type : values()) {
            if (type.getCode().equals(code)) {
                return type;
            }
        }
        return null;
    }

}
