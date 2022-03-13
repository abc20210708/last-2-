package com.example.springpj.notice.controller;


import com.example.springpj.notice.domain.Notice;
import com.example.springpj.notice.dto.ModNotice;
import com.example.springpj.notice.service.NoticeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@Log4j2
@RequestMapping("/notice")
@RequiredArgsConstructor
public class NoticeController {

    private final NoticeService noticeService;



    @GetMapping("/list")
    public String list(Model model) {
        log.info("/notice/list GET!! - ");
        List<Notice> noticeList = noticeService.getList();
        model.addAttribute("articles", noticeList);

        return "notice/list";
    }

    //글쓰기 화면요청
    @GetMapping("/write")
    public String write() {
        log.info("/notice/write GET!");
        return "notice/write";
    }

    //글쓰기 등록요청
    @PostMapping("/write")
    public String write(Notice notice) {
        log.info("/notice/write POST! - " + notice);
        noticeService.write(notice);
        return "redirect:/admin/list";
    }

    //상세조회 요청
    // /board/content?boardNo=3
    @GetMapping("/content")
    public String content(Long bno, Model model) {
        log.info("/board/content GET! - " + bno);
        Notice notice = noticeService.get(bno);
        //log.info("board - " + board);
        model.addAttribute("b", notice);
        return "notice/content";
    }

    //수정 양식 화면 요청
    @GetMapping("/modify")
    public String modify(Long bno, Model model) {
        log.info("/notice/modify GET! - " + bno);
        Notice notice = noticeService.get(bno);
        model.addAttribute("notice", notice);
        return "notice/modify";
    }

    //수정 요청 처리
    @PostMapping("/modify")
    public String modify(ModNotice notice) {
        log.info("/board/modify POST! - " + notice);
        noticeService.update(notice);
        return "redirect:/notice/content?bno=" + notice.getBno();
    }

    //삭제 요청 처리
    @GetMapping("/delete")
    public String delete(Long bno) {
        log.info("/notice/delete GET! - " + bno);
        noticeService.remove(bno);
        return "notice/list";
    }


}
