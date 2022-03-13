package com.example.springpj.notice.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

@Setter @Getter @ToString
public class Notice {

    private Long bno; //공지사항 글번호
    private String writer; //작성자: 관리자 id
    private String title; //글제목
    private String content; //글내용
    private Date regDate; //작성시간


    private String regDateStr; //포맷팅된 날짜문자열
    private boolean newFlag; //신규글 여부

    private static long seq;

    public Notice() {
        this.bno = ++seq;
    }

    public Notice(String writer, String title, String content) {
        this();
        this.writer = writer;
        this.title = title;
        this.content = content;
    }

    public Notice(ResultSet rs) throws SQLException {
        this.bno = rs.getLong("bno");
        this.writer = rs.getString("admin_id");
        this.title = rs.getString("title");
        this.content = rs.getString("content");
    }

}
