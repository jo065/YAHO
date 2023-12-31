package org.example.screenSelect;

import org.example.Container;
import org.example.DefaultCommand;
import org.example.review.controller.ReviewController;

public class ReviewList {
    ReviewController reviewController = new ReviewController();

    public void reviewSelect() {
        MainScreen mainScreen = new MainScreen();

        while (true) {
            System.out.println("\n == 리뷰 창 입니다. ==");
            System.out.println("\n ▶ 전체리뷰 / ▶ 나의리뷰 / ▶ 리뷰수정 / ▶ 리뷰삭제 / ▶ 메인화면");
            System.out.print("입력 :");
            String commandReview = Container.getSc().nextLine().trim();

            switch (commandReview) {
                case "전체리뷰":
                    reviewController.fullReview();
                    break;
                case "나의리뷰":
                    reviewController.myReview();
                    break;
                case "리뷰수정":
                    reviewController.modify();
                    break;
                case "리뷰삭제":
                    reviewController.remove();
                    break;
                case "메인화면":
                    mainScreen.mainSelect();
                    break;
                default:
                    DefaultCommand.defaultError();
                    continue;
            }
            break;
        }
    }
}