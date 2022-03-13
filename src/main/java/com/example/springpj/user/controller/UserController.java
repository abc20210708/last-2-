package com.example.springpj.user.controller;

import com.example.springpj.notice.domain.Notice;
import com.example.springpj.user.domain.User;
import com.example.springpj.user.dto.ModUser;
import com.example.springpj.user.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@Log4j2
@RequestMapping("/user")
@RequiredArgsConstructor
public class UserController {

   private final UserService userService;


    //회원 가입 요청 - 화면
    @GetMapping("/account")
    public String write() {
        log.info("회원 가입 화면 요청! GET!");
        return "user/account";
    }

    //회원 가입 요청
    @PostMapping("/account")
    public String write(User user) {
        log.info("회원 가입 요청! ==> POST!" + user);
        userService.write(user);
        return "redirect:/main/index";
    }

    //회원 탈퇴 - 화면 요청
    @GetMapping("/delete")
    public String delete() {
        log.info("회원 탈퇴 요청! GET!");
        return "user/delete";
    }

    //회원 탈퇴
    @PostMapping("/delete")
    public String delete(String id, String pw) {
        log.info("회원 탈퇴 요청 ==> POST" + id, pw);
        userService.delete(id, pw);
        return "redirect:/main/index";
    }



    //회원의 정보 상세 보기
    @GetMapping("/modify")
    public String content(Model model) {
        User user5 = userService.getUser();
        model.addAttribute("u",user5);
        log.info("수정 화면 요청!");
        log.info(user5);

        return "user/modify";
    }

    @PostMapping("/modify")
    public String content(Model model, ModUser user) {
        User user5 = userService.getUser();
        model.addAttribute("u",user5);
        log.info("수정 요청!");
        userService.updateUser(user);
        log.info(user);
        return "redirect:/user/modify";
    }

    //공지사항 요청 화면
    @GetMapping("/notice")
    public String notice(Model model) {
        log.info("회원 공지사항 요청!");
        List<Notice> noticeList = userService.getNotice();
        model.addAttribute("notice",noticeList);
        return "user/notice";
    }



}//end class
