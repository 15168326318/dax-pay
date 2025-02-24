package org.dromara.daxpay.core.util;

import cn.hutool.core.date.DatePattern;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.*;
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

    // 假设的假期列表
    private static final Set<LocalDate> holidays = new HashSet<>();
    private static final AtomicLong ATOMIC_LONG = new AtomicLong();
    private final static long ORDER_MAX_LIMIT = 999999L;
    static {
        // 添加一些假期日期
        holidays.add(LocalDate.of(2024, 1, 1)); // 元旦
        holidays.add(LocalDate.of(2024, 5, 1)); // 劳动节
        holidays.add(LocalDate.of(2024, 5, 2)); // 劳动节
        holidays.add(LocalDate.of(2024, 5, 3)); // 劳动节
        holidays.add(LocalDate.of(2024, 10, 1)); // 国庆节
        holidays.add(LocalDate.of(2024, 10, 2)); // 国庆节
        holidays.add(LocalDate.of(2024, 10, 3)); // 国庆节
        holidays.add(LocalDate.of(2024, 10, 4)); // 国庆节
        holidays.add(LocalDate.of(2024, 10, 5)); // 国庆节
        holidays.add(LocalDate.of(2024, 10, 6)); // 国庆节
        holidays.add(LocalDate.of(2024, 10, 7)); // 国庆节

         holidays.add(LocalDate.of(2025, 1, 1)); // 元旦
        holidays.add(LocalDate.of(2025, 5, 1)); // 劳动节
        holidays.add(LocalDate.of(2025, 5, 2)); // 劳动节
        holidays.add(LocalDate.of(2025, 5, 3)); // 劳动节
        holidays.add(LocalDate.of(2025, 10, 1)); // 国庆节
        holidays.add(LocalDate.of(2025, 10, 2)); // 国庆节
        holidays.add(LocalDate.of(2025, 10, 3)); // 国庆节
        holidays.add(LocalDate.of(2025, 10, 4)); // 国庆节
        holidays.add(LocalDate.of(2025, 10, 5)); // 国庆节
        holidays.add(LocalDate.of(2025, 10, 6)); // 国庆节
        holidays.add(LocalDate.of(2025, 10, 7)); // 国庆节
        // 可以根据需要添加更多假期
    }
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


    /**
     * 生成某一天内的随机时分秒  早上8点30分到时9点30分;中午是11点30分到13点的样子,下午是14点30分到15点30分的样子
     *
     * @param date 指定的日期
     * @return 随机生成的 LocalDateTime
     */
    public static LocalDateTime generateRandomTime(LocalDate date) {
//        Random random = new Random();
//
//        // 随机生成小时（07-22）、分钟（0-59）、秒（0-59）
//        int hour = random.nextInt(14) + 8;
//        int minute = random.nextInt(59);
//        int second = random.nextInt(59);
//
//        // 组合成 LocalTime
//        LocalTime randomTime = LocalTime.of(hour, minute, second);

        // 组合成 LocalDateTime
        return LocalDateTime.of(date, generateRandomTime());
    }

    public static LocalTime generateRandomTime() {
        Random random = new Random();
        int hour, minute, second;

        // 随机选择一个时间段
        int timeSlot = random.nextInt(100);

        if (timeSlot < 30) { // 30% 的概率选择早上8:30-9:30
            hour = 8;
            minute = 30 + random.nextInt(60);
        } else if (timeSlot < 60) { // 30% 的概率选择中午11:30-13:00
            hour = 11;
            minute = 30 + random.nextInt(90);
        } else if (timeSlot < 80) { // 20%  的概率选择下午14:30-15:30
            hour = 14;
            minute = 30 + random.nextInt(60);
        } else { // 20% 其它时间段
            List<Integer> hours = Arrays.asList(7,10,11,14,15,16,17,18,19,20,21);
            minute = random.nextInt(59);
            hour = hours.get(random.nextInt(hours.size()));

        }

        // 处理分钟溢出
        if (minute >= 60) {
            hour += minute / 60;
            minute = minute % 60;
        }

        // 生成随机的秒数
        second = random.nextInt(60);

        return LocalTime.of(hour, minute, second);
    }


    //// 生成18000到25000之间的随机数 ,用于提现金额
    public static int generateRandomMoney() {
        Random random = new Random();

        // 生成18000到25000之间的随机数
        int randomNumber = random.nextInt(25800 - 18000 + 1) + 19200;

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


    public static LocalDateTime getWorkday(LocalDateTime currentDate) {

            if (isWorkday(currentDate.toLocalDate())) {
                // 随机生成小时（09-20）、分钟（0-59）、秒（0-59）
                Random random = new Random();
                int hour = random.nextInt(11) + 9;
                int minute = random.nextInt(59);
                int second = random.nextInt(59);
                return  LocalDateTime.of(currentDate.toLocalDate(), LocalTime.of(hour, minute,second));
            } else {
                 return null;
            }
    }

    private static boolean isWorkday(LocalDate date) {
        // 排除双休日
        if (date.getDayOfWeek() == DayOfWeek.SATURDAY || date.getDayOfWeek() == DayOfWeek.SUNDAY) {
            return false;
        }

        // 排除假期
        return !holidays.contains(date);
    }
}
