package com.example.springpj.admin.repository;

import com.example.springpj.admin.domain.Admin;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class AdminMapperTest {

    @Autowired
    AdminMapper adminMapper;
    
    @Test
    void createAdmin() {
        Admin testAdmin = Admin.builder()
                .adminPw("00")
                .adminId("pp")
                .grade(0)
                .build();

        adminMapper.createAdmin(testAdmin);
    }

    @Test
    void deleteAdmin() {
    }

    @Test
    void getAdminList() {
    }


}