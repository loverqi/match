package cn.loverqi.match.core.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * String类的工具类
 * @author loverqi
 * @date 2018年1月11日
 */
public class StringUtil {

    /**
     * 判断字符串是否为空
     */
    public static boolean isNull(String str) {
        return str == null || "".equals(str);
    }

    /**
     * 判断字符串是否不为空
     */
    public static boolean isNotNull(String str) {
        return !isNull(str);
    }

    /**
     * 从字符串中提取相应的数字
     * @param str 需要提取的字符串
     * @return 提取到的数字的字符串形式
     */
    public static String getStringDigits(String str) {
        if (StringUtil.isNull(str)) {
            return null;
        }
        String regex = "\\d*[.]*\\d*";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(str);

        while (matcher.find()) {
            if (!"".equals(matcher.group())) {
                return matcher.group().trim();
            }
        }
        
        return null;
    }

    /**
     * 从字符串中提取相应的数字
     * @param str 需要提取的字符串
     * @return 提取到的数字
     */
    public static Integer getStringDigitsInteger(String str) {
        String stringDigits = StringUtil.getStringDigits(str);
        if (stringDigits == null) {
            return null;
        }
        Integer valueOf = Integer.valueOf(stringDigits);

        return valueOf;
    }

    /**
     * 从字符串中提取相应的数字
     * @param str 需要提取的字符串
     * @return 提取到的数字
     */
    public static Double getStringDigitsDouble(String str) {
        String stringDigits = StringUtil.getStringDigits(str);
        if (stringDigits == null) {
            return null;
        }

        Double valueOf = Double.valueOf(stringDigits);

        return valueOf;
    }

    /**
     * 从字符串中提取相应的数字
     * @param str 需要提取的字符串
     * @return 提取到的数字
     */
    public static Float getStringDigitsFloat(String str) {
        String stringDigits = StringUtil.getStringDigits(str);
        if (stringDigits == null) {
            return null;
        }
        Float valueOf = Float.valueOf(stringDigits);

        return valueOf;
    }

}
