package org.dromara.daxpay.core.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;
import org.dromara.daxpay.core.exception.ConfigNotExistException;

import java.util.Arrays;
import java.util.Objects;

/**
 * 收银台类型
 * @author xxm
 * @since 2024/11/26
 */
@Getter
@AllArgsConstructor
public enum CheckoutTypeEnum {

    H5("h5", "H5"),
    PC("pc", "PC"),
    MINI_APP("app", "APP"),
    ;

    private final String code;
    private final String name;

    public static CheckoutTypeEnum findBuyCode(String code){
        return Arrays.stream(CheckoutTypeEnum.values())
                .filter(value -> Objects.equals(value.getCode(), code))
                .findFirst()
                .orElseThrow(() -> new ConfigNotExistException("不支持的收银台类型"));

    }
}
