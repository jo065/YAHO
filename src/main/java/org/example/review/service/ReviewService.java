package org.example.review.service;

import lombok.Getter;
import lombok.Setter;
import org.example.review.entity.Review;
import org.example.review.repository.ReviewRepository;

import java.util.List;

@Getter
@Setter
public class ReviewService {
    ReviewRepository reviewRepository = new ReviewRepository();

    public List<Review> getReviewListAll() {
        return this.reviewRepository.getReviewListAll();
    }

    public void writeService(String title, String content, int score, String memberId, String regDate) {
        reviewRepository.writeRepository(title, content, score, memberId);
    }

    public void modifyService(Review review, String modifyTitle, String modifyContent) {
        reviewRepository.modifyRepository(review, modifyTitle, modifyContent);

    }

    public void removeService(Review review) {
        reviewRepository.removeRepository(review);

    }

    public Review getFindByUserIdService(){
        return reviewRepository.getFindByUserIdRepository();
    }
    public Review getfindByIdService(int id) {
        return reviewRepository.getfindByIdRepository(id);
    }

    public void myReviewListService() {
        reviewRepository.myReviewListRepository();
    }
}