package org.example.review.repository;

import lombok.Getter;
import lombok.Setter;
import org.example.Container;
import org.example.review.entity.Review;


import java.util.ArrayList;
import java.util.List;

public class ReviewRepository {
    @Getter
    @Setter
    private static List<Review> reviews = new ArrayList<>();

    public void writeRepository(long id, String title, String content, int score, String memberId, String regDate) {
        Review review = new Review(id, title, content, score, memberId, regDate);
        reviews.add(review);
    }

    public void listRepository() {
        for (int i = 0; i < reviews.size(); i++) {
            Review review = reviews.get(i);
            System.out.printf("%d / %s / %s / %d / %s\n", review.getId(), review.getTitle(), review.getContent(), review.getScore(), review.getMemberId());
        }
    }

    public void modifyRepository(Review review, String modifyTitle, String modifyContent) {
        review.setTitle(modifyTitle);
        review.setContent(modifyContent);
    }

    public void removeRepository(Review review) {
        reviews.remove(review);

    }

    public Review getfindByIdRepository(int id) {
        for (Review review : reviews) {
            if (review.getId() == id) {
                return review;
            }
        }
        return null;
    }

    public void myReviewListRepository() {

        String userId = Container.getLoginMember().getUserId();

        System.out.println("리뷰 번호 / 제목 / 내용 / 별점 / 작성자");
        System.out.println("-".repeat(29));

        for (int i = 0; i < reviews.size(); i++) {
            Review review = reviews.get(i);
            if (reviews.get(i).getMemberId().equals(userId)) {
                System.out.printf("%d / %s / %s / %d / %s\n", review.getId(), review.getTitle(), review.getContent(), review.getScore(), review.getMemberId());
            }
        }
    }
}