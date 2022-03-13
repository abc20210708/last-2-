package com.example.springpj.request.repository;

import com.example.springpj.request.domain.Request;
import com.example.springpj.user.domain.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface RequestMapper {

    //AS 신청하기 - 회원
    boolean insertRequest(Request request);

    //마지막 로그인 회원
    User requestUser();




}
