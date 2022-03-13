package com.example.springpj.notice.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ModNotice {

    private Long bno;
    private String writer;
    private String title;
    private String content;
}
