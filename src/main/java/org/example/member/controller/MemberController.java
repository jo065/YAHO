package org.example.member.controller;

import org.example.Container;
import org.example.member.entity.Member;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class MemberController {
    List<Member> memberList = new ArrayList<>();
    Member loginUserId = null;

    public void join() {
        String userId;
        String password;
        String passwordConfirm;
        int gender;

        while (true) {
            System.out.printf("아이디: ");
            userId = Container.getScanner().nextLine();
            boolean duplicatedUserId = false;

            for (int i = 0; i < memberList.size(); i++) {
                Member member = memberList.get(i);
                if (member.getUserId().equals(userId)) {
                    duplicatedUserId = true;
                }
            }
            //중복 체크
            if (duplicatedUserId) {
                System.out.println("중복된 아이디 입니다.");
                continue;
            }
            break;
        }
        while (true) {
            System.out.printf("비밀번호: ");
            password = Container.getScanner().nextLine();

            System.out.printf("비밀번호 확인: ");
            passwordConfirm = Container.getScanner().nextLine();

            //비밀번호 일치 여부
            if (password.equals(passwordConfirm) == false) {
                System.out.println("입력하신 비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
                continue;
            }
            break;
        }
        while (true) {
            System.out.println("1. 남성  2. 여성");
            System.out.printf("해당되는 성별(번호): ");
            gender = Container.getScanner().nextInt();

            //해당 항목 입력 확인
            if (gender != 1 && gender != 2) {
                System.out.println("아래 항목에 해당되는 항목(숫자)을 입력해주세요.");
                continue;
            }
            break;
        }
        LocalDate now = LocalDate.now();
        Member member = new Member(userId, password, gender, now.toString());
        memberList.add(member);

        System.out.println(userId + "님 회원가입이 완료되었습니다.");
    }

    public void login() {
        boolean checkedUserId = false;
        Member member = null;

        System.out.printf("아이디: ");
        String userId = Container.getScanner().nextLine();
        System.out.printf("비밀먼호: ");
        String password = Container.getScanner().nextLine();

        for (int i = 0; i < memberList.size(); i++) {
            member = memberList.get(i);
            checkedUserId = true;
        }
        //아이디 존재 여부 확인
        if (checkedUserId == false) {
            System.out.println("입력하신 아이디가 존재하지 않습니다.");
            return;
        }
        //비밀번호 일치 확인
        if (member.getPassword().equals(password) == false) {
            System.out.println("비밀번호를 다시 확인해주세요.");
            return;
        }
        loginUserId = member;
        System.out.println(loginUserId.getUserId() + "님 로그인 성공! 환영합니다.");
    }
}
