package com.example.springpj.user.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.sql.ResultSet;
import java.sql.SQLException;

@Getter @Setter @ToString

public class User {

    private String id;
    private String pw;
    private String name;
    private String address;
    private int postalCode;
    private String  phone;
    private int grade;
    private String gender;
    private Long csNum;

    private static long seq2;

    public User() {
        this.csNum = ++seq2;
    }

    public User(String id, String pw, String name,
                String address, int postalCode,
                String  phone, int grade, String gender
                    , long csNum) {
        this.id = id;
        this.pw = pw;
        this.name = name;
        this.address = address;
        this.postalCode = postalCode;
        this.phone = phone;
        this.grade = grade;
        this.gender = gender;
        this.csNum = csNum;
    }

    public User(ResultSet rs) throws SQLException {
        this.id = rs.getString("cs_id");
        this.pw = rs.getString("pw");
        this.name =rs.getString("cs_name");
        this.address = rs.getString("address");
        this.postalCode = rs.getInt("postal_code");
        this.phone= rs.getString("phone");
        this.grade = rs.getInt("grade");
        this.gender = rs.getString("gender");
        this.csNum = rs.getLong("cs_num");
    }
}//end class
