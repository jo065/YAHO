package org.example.review.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.example.util.Util;

import java.util.Map;

@Getter
@Setter
@AllArgsConstructor
public class Review {
    private int id;
    private String content;
    private String title;
    private int score;
    private String memberId;
    private String regDate;

    public Review(Map<String, Object> row) {
        this.id = (int) row.get("id");
        this.title = (String) row.get("title");
        this.content = (String) row.get("content");
        this.score = (int) row.get("score");
        this.memberId = (String) row.get("memberId");
        this.regDate = (String) row.get("regDate");
    }
}