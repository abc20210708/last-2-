package com.example.springpj.notice.repository;



import com.example.springpj.notice.domain.Notice;
import com.example.springpj.notice.dto.ModNotice;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NoticeMapper {

    //게시물 목록 조회
    List<Notice> getArticles();


    //게시물 상세 조회
    Notice getContent(Long bno);

    //게시물 등록
    boolean insert(Notice notice);

    //게시물 삭제
    boolean delete(Long bno);

    //게시물 수정
    boolean update(ModNotice notice);

}

