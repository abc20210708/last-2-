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

    @GetMapping("/admin")
    public String loginAdmin() {

        return "login/login-admin";
    }

    @GetMapping("/user")
    public String loginUser() {

        return "login/login-user";
    }


}//end class
