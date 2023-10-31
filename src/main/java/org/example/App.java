package org.example;

import org.example.area.controller.AreaController;
import org.example.area.entity.Area;
import org.example.member.controller.MemberController;
import org.example.review.controller.ReviewController;
import org.example.system.SystemController;

public class App {
    void run() {
        System.out.println("★★★ 안녕하세요 YAHO입니다. ★★★");

        System.out.println("== 아래 보기 중 원하시는 목록을 입력해 주세요.(로그인 후 컨텐츠 이용 가능) ==");
        System.out.println("[1.로그인 " + " 2.회원가입 " + " 3.종료]");


        SystemController systemController = new SystemController();
        MemberController memberController = new MemberController();
        ReviewController reviewController = new ReviewController();

        Area area;
        area = new Area();

        while (true) {
            System.out.printf("명령) ");

            String command = Container.getScanner().nextLine();
            switch (command) {
                case "종료":
                    systemController.exit();
                    return;
                case "회원가입":
                    memberController.join();
                    break;
                case "로그인":
                    memberController.login();
                    continue;
                case "로그아웃":
                    memberController.logout();
                    break;
                case "지역선택":
                    area.run();
                    break;
                case "리뷰참여":
                    reviewController.reviewWrite();
                    break;
                default:
                    System.out.println("※ 올바른 명령어를 입력해주세요 ※");
            }
        }
    }
}


