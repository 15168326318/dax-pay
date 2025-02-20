package org.dromara.daxpay.core.util;

import cn.hutool.core.date.DatePattern;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;

/**
 * 各类型订单号生成工具类
 *
 * 前缀(5)+业务类型(1)+机器码(2)+日期(14)+流水号(6)
 *
 * @author yxc
 * @since 2024/4/15
 */
@Slf4j
public class TradeNoGenerateUtil {

    private static final AtomicLong ATOMIC_LONG = new AtomicLong();
    private final static long ORDER_MAX_LIMIT = 999999L;
    /** 机器号 两位 */
    @Setter
    private static String machineNo;
    /** 环境前缀 最长五位 */
//    @Setter
    private static String env = "";

    // 生成一个结合时间戳和随机数的int类型ID
    public static int generateCombinedId() {
        long timestamp = System.currentTimeMillis();
        Random random = new Random();
        int randomValue = random.nextInt(1000); // 生成0到999之间的随机数
        return (int) (timestamp % Integer.MAX_VALUE) + randomValue;
    }

    /**
     * 生成支付订单号
     */
    public static String pay() {
        StringBuilder orderNo = new StringBuilder();
        String dateStr = LocalDateTime.now().format(DatePattern.PURE_DATETIME_FORMATTER);
        long id = ATOMIC_LONG.incrementAndGet();
        orderNo.append(env).append("ORD").append(dateStr).append(machineNo).append(String.format("%06d", Math.abs(id) % ORDER_MAX_LIMIT));
        return orderNo.toString();
    }


    /**
     * 生成商户订单号
     */
    public static String store() {
        StringBuilder orderNo = new StringBuilder();
        String dateStr = LocalDateTime.now().format(DatePattern.PURE_DATETIME_FORMATTER);
        long id = ATOMIC_LONG.incrementAndGet();
        orderNo.append(env).append("PAY_").append(dateStr).append(machineNo).append(String.format("%06d", Math.abs(id) % ORDER_MAX_LIMIT));
        return orderNo.toString();
    }

    /**
     * 生成退款订单号
     */
    public static String refund() {
        StringBuilder orderNo = new StringBuilder();
        String dateStr = LocalDateTime.now().format(DatePattern.PURE_DATETIME_FORMATTER);
        long id = ATOMIC_LONG.incrementAndGet();
        orderNo.append(env).append("R").append(dateStr).append(machineNo).append(String.format("%06d", Math.abs(id) % ORDER_MAX_LIMIT));
        return orderNo.toString();
    }

    /**
     * 生成转账订单号
     */
    public static String transfer() {
        StringBuilder orderNo = new StringBuilder();
        String dateStr = LocalDateTime.now().format(DatePattern.PURE_DATETIME_FORMATTER);
        long id = ATOMIC_LONG.incrementAndGet();
        orderNo.append(env).append("T").append(dateStr).append(machineNo).append(String.format("%06d", Math.abs(id) % ORDER_MAX_LIMIT));
        return orderNo.toString();
    }

    /**
     * 生成分账订单号
     */
    public static String allocation() {
        StringBuilder orderNo = new StringBuilder();
        String dateStr = LocalDateTime.now().format(DatePattern.PURE_DATETIME_FORMATTER);
        long id = ATOMIC_LONG.incrementAndGet();
        orderNo.append(env).append("A").append(dateStr).append(machineNo).append(String.format("%06d", Math.abs(id) % ORDER_MAX_LIMIT));
        return orderNo.toString();
    }

    /**
     * 生成对账订单号
     */
    public static String reconciliation() {
        StringBuilder orderNo = new StringBuilder();
        String dateStr = LocalDateTime.now().format(DatePattern.PURE_DATETIME_FORMATTER);
        long id = ATOMIC_LONG.incrementAndGet();
        orderNo.append(env).append("C").append(dateStr).append(machineNo).append(String.format("%06d", Math.abs(id) % ORDER_MAX_LIMIT));
        return orderNo.toString();
    }

    /**
     * 生成修复单号
     */
    public static String repair() {
        StringBuilder orderNo = new StringBuilder();
        String dateStr = LocalDateTime.now().format(DatePattern.PURE_DATETIME_FORMATTER);
        long id = ATOMIC_LONG.incrementAndGet();
        orderNo.append(env).append("X").append(dateStr).append(machineNo).append(String.format("%06d", Math.abs(id) % ORDER_MAX_LIMIT));
        return orderNo.toString();
    }


    public static void main(String[] args) {
        // 指定某一天（例如：2023-10-01）
        LocalDate date = LocalDate.of(2023, 10, 1);

        // 生成随机时分秒
        LocalDateTime randomDateTime1 = generateRandomTime(date);
        LocalDateTime randomDateTime2 = generateRandomTime(date);
        LocalDateTime randomDateTime3 = generateRandomTime(date);

        // 输出结果
        System.out.println("随机时间 1: " + randomDateTime1);
        System.out.println("随机时间 2: " + randomDateTime2);
        System.out.println("随机时间 3: " + randomDateTime3);
    }

    /**
     * 生成某一天内的随机时分秒
     *
     * @param date 指定的日期
     * @return 随机生成的 LocalDateTime
     */
    public static LocalDateTime generateRandomTime(LocalDate date) {
        Random random = new Random();

        // 随机生成小时（0-23）、分钟（0-59）、秒（0-59）
        int hour = random.nextInt(24);
        int minute = random.nextInt(60);
        int second = random.nextInt(60);

        // 组合成 LocalTime
        LocalTime randomTime = LocalTime.of(hour, minute, second);

        // 组合成 LocalDateTime
        return LocalDateTime.of(date, randomTime);
    }

    public static int generateRandomMoney() {
        Random random = new Random();

        // 生成18000到25000之间的随机数
        int randomNumber = random.nextInt(25000 - 18000 + 1) + 18000;

        // 将随机数调整为整百或整千的数
        int roundedNumber;
        if (random.nextBoolean()) {
            // 调整为整百的数
            roundedNumber = (randomNumber / 100) * 100;
        } else {
            // 调整为整千的数
            roundedNumber = (randomNumber / 1000) * 1000;
        }

       return roundedNumber;
    }
}
