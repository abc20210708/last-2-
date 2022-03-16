package com.example.springpj.user.controller;

import com.example.springpj.notice.domain.Notice;
import com.example.springpj.request.domain.Request;
import com.example.springpj.user.domain.LoginFlag;
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
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
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
    public String content(Model model, String id) {
        User loginUser = userService.getUser(id);
        model.addAttribute("u",loginUser);
        log.info("수정 화면 요청!");
        log.info(loginUser);
        return  "user/modify";
    }

    @PostMapping("/modify")
    public String content(Model model, ModUser modUser) {
        User loginUser = userService.getUser(modUser.getId());
        model.addAttribute("u",loginUser);
        log.info("수정 요청!");
        userService.updateUser(modUser);
        log.info(loginUser);
        log.info(modUser);
        return "redirect:/user/modify?id="+loginUser.getId();
    }

    //공지사항 요청 화면
    @GetMapping("/notice")
    public String notice(Model model) {
        log.info("회원 공지사항 요청!");
        List<Notice> noticeList = userService.getNotice();
        model.addAttribute("notice",noticeList);
        return "user/notice";
    }


    //아이디 중복확인 비동기 통신 요청
    @GetMapping("/check")
    @ResponseBody
    public boolean check(String checkId) {
        log.info("비동기 요청 GET! "+ checkId);
        return userService.isDuplicate(checkId);
    }

    //회원 로그인 양식 화면 요청
    @GetMapping("/login")
    public String loginUser() {

        return "login/login-user";
    }

    //회원 로그인 검증
    @PostMapping("/login")
    public String loginCheck(String id, String pw, Model model,
                             HttpSession session, HttpServletResponse response) throws IOException {
        log.info("loginCheck -- POST! ");
        log.info("ID: "+ id, "PW: " +pw);
        LoginFlag flag = userService.login(id, pw);
        log.info(flag);
        model.addAttribute("msg",flag);
        model.addAttribute("u",id);

        //회원 로그인 성공시
        if (flag == LoginFlag.SUCCESS) {
            session.setAttribute("loginUser", userService.getUser(id));
            return "redirect:/user/modify?id="+id;
        }
        return "login/login-user";
    }



    @GetMapping("/logout")
    public String logout(HttpSession session) {
        User user = (User) session.getAttribute("loginUser");
        if (user!=null) {
            session.removeAttribute("loginUser");
            session.invalidate();// 세션 무효화
        }
        return "redirect:/main/index";
    }



}//end class
