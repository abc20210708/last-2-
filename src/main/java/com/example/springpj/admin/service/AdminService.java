package com.example.springpj.admin.service;

import com.example.springpj.admin.domain.Admin;
import com.example.springpj.admin.domain.LoginFlag;
import com.example.springpj.admin.repository.AdminMapper;
import com.example.springpj.notice.domain.Notice;
import com.example.springpj.notice.dto.ModNotice;
import com.example.springpj.request.domain.Request;
import com.example.springpj.user.domain.User;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Service
@Log4j2
@RequiredArgsConstructor
public class AdminService {

    private final AdminMapper adminMapper;

    //관리자 목록 조회 중간 처리
    public List<Admin> getList() {
        log.info("관리자 조회 중간처리!");
        return adminMapper.getAdminList();
    }

    //관리자 정보 받기
    public Admin getAdmin(String id) {
        return adminMapper.getAdmin(id);
    }

    //관리자 등록 중간처리
    public boolean write(Admin admin) {

        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String encodedPw = encoder.encode(admin.getAdminPw());
        admin.setAdminPw(encodedPw);
        log.info("관리자 등록 중간처리");
        return adminMapper.createAdmin(admin);
    }

    //관리자 삭제 중간처리
    public boolean delete(String adminId, String adminPw) {
        log.info("관리자 삭제 중간처리!");
        return adminMapper.deleteAdmin(adminId, adminPw);
    }


    //회원 조회 중간 처리
    public List<User> getUserList() {
        return adminMapper.getUserList();
    }

    //AS 조회 중간 처리
    public List<Request> getRequestList() {
        List<Request> requestList = adminMapper.getRequestList();
        log.info("AS 조회 중간 처리" + requestList);
        return requestList;
    }

    //회원 상세 조회 중간 처리
    public User getUserContent(Long csNum) {
        log.info("회원 상세 조회 중간 처리! " + csNum);
        return adminMapper.getUserContent(csNum);
    }

    //AS 상세 조회 중간 처리
    public Request getRequestContent(Long asNum) {
        log.info("회원 상세 조회 중간 처리! " + asNum);
        return adminMapper.getRequestContent(asNum);
    }


    //공지사항 조회 중간 처리
    public List<Notice> getNoticeList() {
        log.info("공지사항 조회 중간 처리!");
        return adminMapper.getNoticeList();

    }

    //공지사항 삭제 중간처리
    public void remove(Long bno) {
        adminMapper.deleteNotice(bno);
    }

    //공지사항 수정 중간 처리

    //수정 중간처리
    public boolean update(ModNotice notice) {
        adminMapper.updateNotice(notice);
        return true;
    }

    //관리자 로그인 중간처리
    public LoginFlag login(String id, String pw) {
        Admin admin = adminMapper.getAdmin(id);
        if (admin != null){
            String dbPw = admin.getAdminPw();
            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            return encoder.matches(pw, dbPw) ? LoginFlag.SUCCESS : LoginFlag.NO_PW;
        } else {
            return LoginFlag.NO_ID;
        }
    }

}//end class
