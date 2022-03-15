package com.example.springpj.login.controller;


import com.example.springpj.user.domain.LoginFlag;
import com.example.springpj.user.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@Log4j2
@RequestMapping("/login")

public class LoginController {



    //관리자 로그인 양식 화면 요청
    @GetMapping("/admin")
    public String loginAdmin() {

        return "login/login-admin";
    }



}//end class
