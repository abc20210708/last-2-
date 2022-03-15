package com.example.springpj.login.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j2
@RequestMapping("/login")

public class LoginController {

    //관리자 로그인 양식 화면 요청
    @GetMapping("/admin")
    public String loginAdmin() {

        return "login/login-admin";
    }

    //회원 로그인 양식 화면 요청
    @GetMapping("/user")
    public String loginUser() {

        return "login/login-user";
    }

    //


}//end class
