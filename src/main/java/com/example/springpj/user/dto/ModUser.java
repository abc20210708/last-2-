package com.example.springpj.user.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.sql.ResultSet;
import java.sql.SQLException;

@Getter
@Setter
@ToString

public class ModUser {

    private String id;
    private String pw;
    private String address;
    private int postalCode;
    private String phone;
    private int csNum;


    /*public ModUser(ResultSet rs) throws SQLException {


        this.address = rs.getString("address");
        this.postalCode = rs.getInt("postal_code");
        this.phone = rs.getString("phone");

    }*/


}//end class
