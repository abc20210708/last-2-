package com.example.springpj.request.controller;

import com.example.springpj.request.domain.Request;
import com.example.springpj.request.service.RequestService;
import com.example.springpj.user.domain.User;
import lombok.extern.log4j.Log4j2;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@Log4j2
@RequestMapping("/request")
public class RequestController {

    private final RequestService requestService;

    public RequestController(RequestService requestService) {
        this.requestService = requestService;
    }



    //AS 신청 요청 - 화면
    @GetMapping("/request")
    public String write(Request request, Model model) {
        log.info("AS 신청 화면 요청! GET!");
        model.addAttribute("u",request);
        return "request/request?csId?="+request.getCsId();
    }

    //AS 신청 요청
    @PostMapping("/request")
    public String write(Request request) {
        log.info("AS 신청 요청! ==> POST!" + request);
        requestService.write(request);
        return  "redirect:/user/modify?id="+request.getCsId();
    }




}//end class
