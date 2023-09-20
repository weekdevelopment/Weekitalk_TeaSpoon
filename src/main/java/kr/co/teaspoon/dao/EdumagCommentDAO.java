package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.EdumagComment;

import java.util.List;

public interface EdumagCommentDAO {
    public List<EdumagComment> edumagCommentList(int no) throws Exception;
    //public EdumagComment
}
