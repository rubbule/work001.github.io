package com.LJY.test;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.CircleCaptcha;

public class codeTest {
    public static void main(String[] args) {
        CircleCaptcha cc = CaptchaUtil.createCircleCaptcha(200,100,4,20);
        cc.write("E:\\photo\\yzm.jpg");
        System.out.println(cc.getCode());
    }
}
