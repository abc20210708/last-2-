package com.example.springpj.user.service;

import com.example.springpj.notice.domain.Notice;
import com.example.springpj.user.domain.LoginFlag;
import com.example.springpj.user.domain.User;
import com.example.springpj.user.dto.ModUser;
import com.example.springpj.user.repository.UserMapper;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import static com.example.springpj.user.domain.LoginFlag.*;

import java.util.List;

@Service
@Log4j2
@RequiredArgsConstructor
public class UserService {

    private final UserMapper userMapper;

    //회원 가입 중간 처리
    public boolean write(User user) {

        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String encodedPw = encoder.encode(user.getPw());
        user.setPw(encodedPw);

        return userMapper.createUser(user);
    }

    //회원 탈퇴 요청 처리
    public boolean delete(String id, String pw) {
        return userMapper.deleteUser(id, pw);
    }

    //회원 수정 처리
    public boolean updateUser(ModUser user) {
        userMapper.updateUser(user);
        return true;
    }

    //회원 정보 받기
    public User getUser(String id) {
       return  userMapper.getUser(id);
    }

    //공지사항 목록 중간처리
    public List<Notice> getNotice() {
        List<Notice> articles = userMapper.getNotice();

        return articles;
    }

    //아이디 중복확인 중간처리
    public boolean isDuplicate(String checkId) {
        return userMapper.isDuplicate(checkId) == 1;
    }

    //로그인 중간처리
    public LoginFlag login(String id, String password) {
        User user = userMapper.getUser(id);
        if (user != null) {
            String dbPw = user.getPw();
            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            return encoder.matches(password,dbPw) ? SUCCESS : NO_PW;
        } else {
            return NO_ID;
        }
    }



}//end class
