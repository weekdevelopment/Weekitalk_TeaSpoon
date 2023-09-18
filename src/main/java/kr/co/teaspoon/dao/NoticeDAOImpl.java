package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Notice;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class NoticeDAOImpl implements NoticeDAO{
    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Notice> noticeList() throws Exception {
        return sqlSession.selectList("notice.noticeList");
    }

    @Override
    public Notice noticeDetail(int nno) throws Exception {
        sqlSession.update("notice.countUp", nno);
        return sqlSession.selectOne("notice.noticeDetail", nno);
    }

    @Override
    public void noticeInsert(Notice dto) throws Exception {
        sqlSession.insert("notice.noticeInsert",dto );
    }

    @Override
    public void noticeDelete(int nno) throws Exception {
        sqlSession.delete("notice.noticeDelete",nno);
    }

    @Override
    public void noticeEdit(Notice dto) throws Exception {
        sqlSession.update("notice.noticeEdit", dto);
    }
}
