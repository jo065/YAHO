package org.example.screenSelect;

import org.example.Container;
import org.example.area.entity.Area;
import org.example.DefaultCommand;
import org.example.member.controller.MemberController;
import org.example.review.controller.ReviewController;

public class MainScreen {
    MemberController memberController = new MemberController();
    ReviewList reviewList = new ReviewList();
    Area area = new Area();
    public void mainSelect(){
        while (true) {

            System.out.println("\n○●○● YAHO의 메인화면 입니다. ●○●○");
            System.out.println("\n ▶ 지역선택 / ▶ 로그아웃 / ▶ 리뷰목록");
            System.out.print("입력 : ");
            String command2 = Container.getSc().nextLine().trim();

            switch (command2) {
                case "지역선택":
                    area.areaSelcet();
                    break;
                case "로그아웃":
                    memberController.logout();
                    break;
                case "리뷰목록":
                    reviewList.reviewSelect();
                    break;
                default:
                    DefaultCommand.defaultError();
                    continue;
            }
            break;
        }
    }
}