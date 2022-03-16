package com.example.springpj.admin.repository;


import com.example.springpj.admin.domain.Admin;
import com.example.springpj.notice.domain.Notice;
import com.example.springpj.notice.dto.ModNotice;
import com.example.springpj.request.domain.Request;
import com.example.springpj.user.domain.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface AdminMapper {

    //관리자 가입
    boolean createAdmin(Admin admin);

    //관리자 삭제
    boolean deleteAdmin(String adminId, String adminPw);

    //관리자 목록 전체 조회
    List<Admin> getAdminList();

    //단일 관리자 정보 받기
    Admin getAdmin(String id);

    //회원 목록 조회하기
    List<User> getUserList();

    //AS 목록 조회하기
    List<Request> getRequestList();

    //회원 목록 상세조회
    User getUserContent(Long csNum);

    //AS 목록 상세조회
    Request getRequestContent(Long asNum);

    //공지사항 목록 조회
    List<Notice> getNoticeList();

    //공지사항 삭제
    boolean deleteNotice(Long bno);

    //공지사항 수정
    boolean updateNotice(ModNotice notice);

    //공지사항 등록
    boolean insert(Notice notice);

}//
