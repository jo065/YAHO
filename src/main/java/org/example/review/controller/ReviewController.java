package org.example.review.controller;

import org.example.Container;
import org.example.review.entity.Reivew;

import java.util.ArrayList;
import java.util.List;

public class ReviewController {
    static List<Reivew> reivewList = new ArrayList<>();
    long id = 0;

    public static void reviewWrite() {
        if (Container.getLoginUserId() == null) {
            System.out.println("※ 회원만 이용 가능합니다 ※");
            return;
        }

        System.out.println("리뷰를 작성하시겠습니까?(1.예  2.아니오)");

        System.out.printf("명령) ");
        String answer = Container.getScanner().nextLine().trim();
        if (answer.equals("예")) {
            System.out.printf("리뷰 제목: ");
            String title = Container.getScanner().nextLine().trim();
            System.out.printf("리뷰 내용: ");
            String content = Container.getScanner().nextLine().trim();
            System.out.println("== 별점을 선택해주세요. ==");
            System.out.println("1.★(1점)\n2.★★(2점)\n3.★★★(3점)\n4.★★★★(4점)\n5.★★★★★(5점)");

            //번호 이외의 값 입력시 예외처리
            System.out.printf("점수(번호): ");
            int score = Integer.parseInt(Container.getScanner().nextLine().trim());

            Reivew reivew = new Reivew(title, content, score, Container.getLoginUserId());
            reivewList.add(reivew);

            System.out.println("==리뷰에 참여해 주셔서 감사합니다.==");

        } else if (answer.equals("아니오")) {
            System.out.println("==아래 보기 중 원하시는 목록을 입력해주세요.==");
            System.out.println("[1.로그아웃  2.내 정보  3.종료]");

            System.out.printf("명령) ");
            String lastAnswer = Container.getScanner().nextLine();
        }
    }

    public void reviewList() {
    }

    public void reviewRemove() {
    }

    public void reviewModify() {
    }

}
