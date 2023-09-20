package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.EdumagComment;

import java.util.List;

public interface EdumagCommentService {
    public List<EdumagComment> edumagCommentList(int no) throws Exception;

}
