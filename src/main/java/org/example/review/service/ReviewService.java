package org.example.review.service;

import lombok.Getter;
import lombok.Setter;
import org.example.review.entity.Review;
import org.example.review.repository.ReviewRepository;

@Getter
@Setter
public class ReviewService {
    ReviewRepository reviewRepository = new ReviewRepository();

    public void writeService(long id, String title, String content, int score, String memberId, String regDate) {
        reviewRepository.writeRepository(id, title, content, score, memberId, regDate);
    }

    public void listService() {
        reviewRepository.listRepository();

    }

    public void modifyService(Review review, String modifyTitle, String modifyContent) {
        reviewRepository.modifyRepository(review, modifyTitle, modifyContent);

    }

    public void removeService(Review review) {
        reviewRepository.removeRepository(review);

    }

    public Review getfindByIdService(int id) {
        return reviewRepository.getfindByIdRepository(id);
    }

    public void myReviewListService() {
        reviewRepository.myReviewListRepository();
    }
}