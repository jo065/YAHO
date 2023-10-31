package org.example.member.repository;

import org.example.member.entity.Member;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class MemberRepository {
    List<Member> memberList = new ArrayList<>();
    LocalDate now = LocalDate.now();
    public MemberRepository() {
        Member member1 = new Member("user1", "1234", 1, now.toString());
        memberList.add(member1);
    }
}
