package com.example.springpj.request.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.sql.ResultSet;
import java.sql.SQLException;

@Getter @Setter @ToString
public class Request {

    private Long asNum;       //접수번호
    private String csId;        //회원 아이디
    private String productName; //제품명
    private int amount;         //수량
    private String asChoice;    //방문
    private String asComment;   //세부사항
    private String asDate;      //접수날짜

    private static long seq;

    public Request() {
        this.asNum = ++seq;
    }

    public Request(Long asNum, String csId,
                   String productName, int amount,
                   String asChoice, String asComment,
                   String asDate) {
        this.asNum = asNum;
        this.csId = csId;
        this.productName = productName;
        this.amount = amount;
        this.asChoice = asChoice;
        this.asComment = asComment;
        this.asDate = asDate;
    }

    public Request(ResultSet rs) throws SQLException {
        this.asNum = rs.getLong("as_num");
        this.csId = rs.getString("cs_id");
        this.productName = rs.getString("product_name");
        this.amount = rs.getInt("amount");
        this.asChoice = rs.getString("as_choice");
        this.asComment = rs.getString("as_comment");
        this.asDate = rs.getString("as_date");
    }


}//end class
