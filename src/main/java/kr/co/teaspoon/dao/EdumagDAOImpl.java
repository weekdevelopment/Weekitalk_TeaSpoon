package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Edumag;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EdumagDAOImpl implements EdumagDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Edumag> edumagList() throws Exception {
        return sqlSession.selectList("edumag.edumagList");
    }

    @Override
    public Edumag edumagDetail(int no) throws Exception {
        sqlSession.update("edumag.visitCount", no);
        return sqlSession.selectOne("edumag.edumagDetail", no);
    }

    @Override
    public void edumagInsert(Edumag dto) throws Exception {
        sqlSession.insert("edumag.edumagInsert", dto);
    }

    @Override
    public void edumagDelete(int no) throws Exception {
        sqlSession.delete("edumag.edumagDelete", no);
    }

    @Override
    public void edumagEdit(Edumag dto) throws Exception {
        sqlSession.update("edumag.edumagEdit", dto);
    }
}
