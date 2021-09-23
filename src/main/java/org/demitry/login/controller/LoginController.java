package org.demitry.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login/")
public class LoginController {
    // 로그인 페이지
    @RequestMapping("login")
    public String login()
    {
        return "login/login";
    }
    // 회원가입 페이지
    @RequestMapping("join")
    public String join()
    {
        return "login/join";
    }
    // 프로필 페이지
    @RequestMapping("profile")
    public String profile()
    {
        return "login/profile";
    }
}
