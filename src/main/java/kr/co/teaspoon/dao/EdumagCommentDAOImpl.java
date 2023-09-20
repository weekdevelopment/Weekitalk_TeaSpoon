package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.EdumagComment;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EdumagCommentDAOImpl implements EdumagCommentDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<EdumagComment> edumagCommentList(int no) throws Exception {
        return sqlSession.selectList("edumag.edumagCommentList", no);
    }

}
