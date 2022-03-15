package com.example.springpj.user.repository;

import com.example.springpj.notice.domain.Notice;
import com.example.springpj.user.domain.User;
import com.example.springpj.user.dto.ModUser;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface UserMapper {



    // 유저 회원가입
    boolean createUser(User user);


    // 유저 탈퇴
    boolean deleteUser(String id, String pw);

    //회원 수정하기
    boolean updateUser(ModUser user);

    //회원 정보 받기
    User getUser();

    //회원 공지사항 목록 조회
    List<Notice> getNotice();

    //아이디 중복 체크
    int isDuplicate(String targetKeyword);



}
