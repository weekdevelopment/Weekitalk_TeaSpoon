package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Qna;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class QnaDAOImpl implements QnaDAO {
    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Qna> qnaList() throws Exception {
        return sqlSession.selectList("qna.qnaList");
    }

    @Override
    public Qna qnaDetail(int qno) throws Exception {
        sqlSession.update("qna.countUp", qno);
        return sqlSession.selectOne("qna.qnaDetail", qno);
    }

    @Transactional
    @Override
    public void qnaInsert(Qna dto) throws Exception {
        sqlSession.insert("qna.qnaInsert",dto );
        sqlSession.update("qna.qnaInsertUpdate");
    }

    @Override
    public void qnaDelete(int qno) throws Exception {
        sqlSession.delete("qna.qnaDelete",qno);
    }

    @Override
    public void qnaEdit(Qna dto) throws Exception {
        sqlSession.update("qna.qnaEdit", dto);
    }
}