package org.example.review.repository;

import lombok.Getter;
import lombok.Setter;
import org.example.Container;
import org.example.db.DBConnection;
import org.example.review.entity.Review;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ReviewRepository {
    @Getter
    @Setter
    private DBConnection dbConnection;

    public ReviewRepository() {
        dbConnection = Container.getDBconnection();
    }

    public void writeRepository(String title, String content, int score, String regDate) {
//        List<Review> reviews = new ArrayList<>();

        StringBuilder sb = new StringBuilder();
        sb.append(String.format("INSERT INTO `review` "));
        sb.append(String.format("SET regDate = NOW(), "));
        sb.append(String.format("title = '%s', ", title));
        sb.append(String.format("score = '%d', ", score));
        sb.append(String.format("content = '%s', ", content));
        sb.append(String.format("memberId = '%s' ", Container.getLoginMember().getUserId()));

        int id = dbConnection.insert(sb.toString());

//        Review review = new Review(id, title, content, score, Container.getLoginMember().getUserId(), regDate);
//        reviews.add(review);
    }

//    public void listRepository() {
//        List<Review> reviews = new ArrayList<>();
//
//
//        for (int i = 0; i < reviews.size(); i++) {
//            Review review = reviews.get(i);
//            System.out.printf("%d / %s / %s / %d / %s\n", review.getId(), review.getTitle(), review.getContent(), review.getScore(), review.getMemberId());
//        }
//    }

    public void modifyRepository(Review review, String modifyTitle, String modifyContent) {

        int id = review.getId();

        StringBuilder sb = new StringBuilder();

        sb.append(String.format("UPDATE `review` "));
        sb.append(String.format("SET title = '%s', ", modifyTitle));
        sb.append(String.format("content = '%s' ", modifyContent));
        sb.append(String.format("WHERE id = %d ", id));

        dbConnection.update(sb.toString());

    }

    public void removeRepository(Review review) {
        int id = review.getId();

        StringBuilder sb = new StringBuilder();

        sb.append(String.format("DELETE FROM `review` "));
        sb.append(String.format("WHERE id = '%d' ", id));

        dbConnection.delete(sb.toString());
// reviews.remove(review);

    }

    public List<Review> getReviewListAll() {

        List<Review> reviews = new ArrayList<>();

        StringBuilder sb = new StringBuilder();

        sb.append(String.format("SELECT * FROM `review`"));

        List<Map<String, Object>> rows = dbConnection.selectRows(sb.toString());

        for (Map<String, Object> row : rows) {
            reviews.add(new Review(row));
        }
        return reviews;
    }

    public Review getfindByIdRepository(int id) {

        List<Review> reviews = getReviewListAll();

        for (Review review : reviews) {
            if (review.getId() == id) {
                return review;
            }
        }
        return null;
    }

    public Review getFindByUserIdRepository() {
        List<Review> reviews = getReviewListAll();

        for (Review review : reviews) {
            if (review.getMemberId().equals(Container.getLoginMember().getUserId())) {
                return review;
            }
        }
        return null;
    }

    public void myReviewListRepository() {

        List<Review> reviews = getReviewListAll();

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