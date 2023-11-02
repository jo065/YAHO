package org.example.review.entity;

import lombok.Getter;
import lombok.Setter;
import org.example.util.Util;

@Getter
@Setter
public class Review {
    private long id;
    private String content;
    private String title;
    private int score;
    private String memberId;
    private String regDate;

    public Review(long id, String title, String content, int score, String memberId, String regDate) {
        this.id = id;
        this.content = content;
        this.title = title;
        this.score = score;
        this.memberId = memberId;
        this.regDate = regDate;
    }
}