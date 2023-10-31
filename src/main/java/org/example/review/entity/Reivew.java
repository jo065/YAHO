package org.example.review.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.example.member.entity.Member;

@Setter
@Getter
@AllArgsConstructor
public class Reivew {
    private long id;
    private String title;
    private String content;
    private int score;
    private String writer;
    private String regDate;
    private String loginId;

    public Reivew(String title, String content, int score, Member loginUserId) {
        this.title = title;
        this.content = content;
        this.score = score;
    }
}
