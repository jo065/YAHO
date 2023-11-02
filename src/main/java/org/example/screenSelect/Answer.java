package org.example.screenSelect;

import org.example.Container;
import org.example.DefaultCommand;
import org.example.review.controller.ReviewController;
import org.example.screenSelect.MainScreen;

public class Answer {

    ReviewController reviewController = new ReviewController();
    public void review() {
        MainScreen mainScreen = new MainScreen();

        while (true) {
            System.out.println("\n리뷰를 작성하시겠습니까?");
            System.out.println("\n▶ 네   ▶ 아니요");
            System.out.print("입력 : ");
            String commandAnswer = Container.getSc().nextLine().trim();

            switch (commandAnswer){
                case "네":
                    reviewController.write();
                    break;
                case "아니요":
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