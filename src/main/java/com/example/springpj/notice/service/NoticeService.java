package com.example.springpj.notice.service;

import com.example.springpj.notice.domain.Notice;
import com.example.springpj.notice.dto.ModNotice;
import com.example.springpj.notice.repository.NoticeMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Log4j2
@RequiredArgsConstructor

public class NoticeService {

    private final NoticeMapper noticeMapper;

    //게시물 목록 중간처리
    public List<Notice> getList() {
        List<Notice> articles = noticeMapper.getArticles();

        return judgeNewArticle(articles);
    }

    private List<Notice> judgeNewArticle(List<Notice> articles) {
        //해당 리스트에서 게시물객체를 하나씩 꺼내 작성일자를 추출
        for (Notice article : articles) {
            //작성일자
            long regDateTime = article.getRegDate().getTime();
            //현재날짜시간
            long nowTime = System.currentTimeMillis();

            //현재시간 - 작성시간
            long diff = nowTime - regDateTime;

            // NewFlag 24시간 설정
            long limitTime = 3 * 60 * 1000;
            if (diff < limitTime) {
                article.setNewFlag(true);
            }
        }
        return articles;
    }

    //글쓰기 중간처리
    public boolean write(Notice notice) {

        return noticeMapper.insert(notice);
    }

    //상세조회 중간처리
    public Notice get(Long bno) {
        return noticeMapper.getContent(bno);
    }


    //수정 중간처리
    public boolean update(ModNotice notice) {
        noticeMapper.update(notice);
        return true;
    }

    //삭제 중간처리
    public void remove(Long bno) {
        noticeMapper.delete(bno);
    }

}
