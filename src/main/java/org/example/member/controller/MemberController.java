package org.example.member.controller;

import org.example.Container;
import org.example.member.entity.Member;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class MemberController {
    List<Member> memberList = new ArrayList<>();

    public void join() {
        String userId;
        String password;
        String passwordConfirm;
        int gender;

        System.out.println("== 회원가입 ==");

        while (true) {
            System.out.printf("아이디: ");
            userId = Container.getScanner().nextLine();
            boolean duplicatedUserId = false;

            for (int i = 0; i < memberList.size(); i++) {
                Member member = memberList.get(i);
                if (member.getUserId().equals(userId)) {
                    duplicatedUserId = true;
                    break;
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
            System.out.println("1.남성  2.여성");
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

        System.out.println(userId + "님 회원가입이 완료되었습니다. 로그인을 진행해 주세요.");
        Container.getScanner().nextLine().trim();
    }

    public void login() {
        boolean checkedUserId = false;
        Member member = null;

        System.out.println("== 로그인 ==");

        if (Container.getLoginUserId() != null) {
            System.out.println("로그인 상태입니다.");
            return;
        }

        System.out.printf("아이디: ");
        String userId = Container.getScanner().nextLine();
        System.out.printf("비밀번호: ");
        String password = Container.getScanner().nextLine();

        for (int i = 0; i < memberList.size(); i++) {
            member = memberList.get(i);
            if (member.getUserId().equals(userId)) {
                checkedUserId = true;
                break;
            }
        }
        //아이디 존재 여부 확인
        if (checkedUserId == false) {
            System.out.println("입력하신 아이디가 존재하지 않습니다. 다시 로그인 해주세요.");
            return;
        }
        //비밀번호 일치 확인
        if (member.getPassword().equals(password) == false) {
            System.out.println("비밀번호가 틀립니다 다시 로그인 해주세요.");
            return;
        }
        Container.setLoginUserId(member);

        System.out.println(Container.getLoginUserId().getUserId() + "님 로그인 성공! 환영합니다.(*´∪`)");

        System.out.println("-".repeat(30));
        System.out.println("아래 보기 중 원하시는 목록을 입력해주세요.");
        System.out.println("[1.지역선택  2.로그아웃  3.내 정보]");
        System.out.println("-".repeat(30));
    }

    public void logout() {
        if (Container.getLoginUserId() == null) {
            System.out.println("로그아웃 상태입니다.");
            return;
        }
        Container.setLoginUserId(null);
        System.out.println("로그아웃 되었습니다.");
    }
}

