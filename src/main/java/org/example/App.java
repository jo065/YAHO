package org.example;

import org.example.member.controller.MemberController;
import org.example.member.entity.Member;
import org.example.system.SystemController;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class App {
    void run() {
        System.out.println("== 안녕하세요 YAHO입니다. ==");
        System.out.println("아래 보기 중 원하시는 목록을 입력해주세요. (로그인 해야 컨텐츠 이용 가능!)");
        System.out.println("1.로그인 " + " 2.회원가입 " + " 3.종료");

        SystemController systemController = new SystemController();
        MemberController memberController = new MemberController();

        while (true) {
            System.out.printf("명령) ");

            String command = Container.getScanner().nextLine().trim();
            switch (command) {
                case "종료":
                    systemController.exit();
                    return;
                case "회원가입":
                    System.out.println("== 회원가입 ==");
                    memberController.join();
                    break;
                case "로그인":
                    System.out.println("== 로그인 ==");
                    memberController.login();
                    break;
            }
        }
    }
}


