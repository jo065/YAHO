package org.example.review.controller;

import org.example.Container;
import org.example.review.repository.ReviewRepository;
import org.example.screenSelect.MainScreen;
import org.example.review.entity.Review;
import org.example.review.service.ReviewService;
import org.example.util.Util;

import java.util.ArrayList;
import java.util.List;

public class ReviewController {
    private static MainScreen mainScreen = new MainScreen();
    ReviewService reviewService = new ReviewService();

    public void write() {

        System.out.println("\n== 리뷰를 작성해주세요. ==");
        System.out.print("제목 :");
        String title = Container.getSc().nextLine().trim();
        System.out.print("내용 :");
        String content = Container.getSc().nextLine().trim();

        int score;
        while (true) {
            System.out.print("별점(⭐(1점) ~ ⭐⭐⭐⭐⭐(5점)) : ");

            try {
                score = Integer.parseInt(Container.getSc().nextLine().trim());
                if (score < 1 || score > 5) {
                    System.out.println("※ 범위 내 숫자(정수)만 입력해 주세요. ※");
                    continue;
                }
            } catch (NumberFormatException e) {
                System.out.println("※ 범위 내 숫자(정수)만 입력해 주세요. ※");
                continue;
            }
            break;
        }

        String memberId = Container.getLoginMember().getUserId();

        reviewService.writeService(title, content, score, memberId, Util.regDate());

        System.out.println(memberId + "님의 리뷰가 작성되었습니다.");

        mainScreen.mainSelect();
    }

    public void fullReview() {
        List<Review> reviews = reviewService.getReviewListAll();

        System.out.println("리뷰 번호 / 제목 / 내용 / 별점 / 작성자");
        System.out.println("-".repeat(29));

        for (int i = 0; i < reviews.size(); i++) {
            Review review = reviews.get(i);
            System.out.printf("%d / %s / %s / %d / %s\n", review.getId(), review.getTitle(), review.getContent(), review.getScore(), review.getMemberId());
        }

        System.out.println("리뷰 목록이 출력되었습니다.");
        mainScreen.mainSelect();
    }

    public void myReview() {

        List<Review> reviews = reviewService.getReviewListAll();

        if (reviews.size() == 0) {
            System.out.println("※ 작성한 리뷰가 없습니다. ※");
        }

        reviewService.myReviewListService();

        for (int i = 0; i < reviews.size(); i++) {
            if (reviewService.getFindByUserIdService() == null) {
                System.out.println("※ 작성한 리뷰가 없습니다. ※");
            } else {
                System.out.println("나의 리뷰 목록이 출력되었습니다.");
            }
            break;
        }
        mainScreen.mainSelect();
    }

    public void modify() {
        List<Review> reviews = reviewService.getReviewListAll();

        if (reviews.size() == 0) {
            System.out.println("※ 작성한 리뷰가 없습니다. ※");
        }
// 내 리뷰 출력구문
        reviewService.myReviewListService();

        for (int i = 0; i < reviews.size(); i++) {
            if (reviewService.getFindByUserIdService() == null) {
                System.out.println("※ 작성한 리뷰가 없습니다. ※");
            } else {
                System.out.println("나의 리뷰 목록이 출력되었습니다. 수정할 리뷰번호를 선택해주세요.");

                int id;
                while (true) {
                    System.out.print("입력 : ");
                    try {
                        id = Integer.parseInt(Container.getSc().nextLine().trim());
                    } catch (NumberFormatException e) {
                        System.out.println("※ 숫자(번호)를 입력해주세요. ※");
                        continue;
                    }
                    break;
                }

                Review review = reviewService.getfindByIdService(id);

                if (review == null) {
                    System.out.println("※ 해당 리뷰글을 찾을 수 없습니다. ※");
                    continue;
                }

                System.out.printf("기존 제목 : %s\n", review.getTitle());
                System.out.printf("제목 : ");

                String modifyTitle = Container.getSc().nextLine().trim();

                System.out.printf("기존 내용 : %s\n", review.getContent());
                System.out.printf("내용 : ");

                String modifyContent = Container.getSc().nextLine().trim();

                reviewService.modifyService(review, modifyTitle, modifyContent);

                System.out.println(id + "번 리뷰가 수정되었습니다.");
            }

            break;
        }
        mainScreen.mainSelect();
    }

    public void remove() {

        List<Review> reviews = reviewService.getReviewListAll();

        reviewService.myReviewListService();

        for (int i = 0; i < reviews.size(); i++) {
            if (reviewService.getFindByUserIdService() == null) {
                System.out.println("※ 작성한 리뷰가 없습니다. ※");
            } else {
                System.out.println("나의 리뷰 목록이 출력되었습니다. 삭제할 리뷰번호를 선택해주세요.");

                int id;
                while (true) {
                    System.out.print("입력 : ");
                    try {
                        id = Integer.parseInt(Container.getSc().nextLine().trim());
                    } catch (NumberFormatException e) {
                        System.out.println("※ 숫자(번호)를 입력해주세요. ※");
                        continue;
                    }
                    break;
                }

                Review review = reviewService.getfindByIdService(id);
                if (review == null) {
                    System.out.println("※ 해당 리뷰글을 찾을 수 없습니다. ※");
                    continue;
                }
                reviewService.removeService(review);

                System.out.println(id + "번 리뷰가 삭제되었습니다.");
            }
            break;
        }
        mainScreen.mainSelect();
    }
}