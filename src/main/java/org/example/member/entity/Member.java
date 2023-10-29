package org.example.member.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.Locale;

@AllArgsConstructor
@Setter
@Getter
public class Member {
    private long id;
    private String userId;
    private String password;
    private String regDate;
    private int gender;

    public Member(String userId, String password, int gender, String regDate) {
        this.userId = userId;
        this.password = password;
    }
}
