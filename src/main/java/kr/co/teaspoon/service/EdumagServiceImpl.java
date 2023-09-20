package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.EdumagDAO;
import kr.co.teaspoon.dto.Edumag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EdumagServiceImpl implements  EdumagService{

    @Autowired
    private EdumagDAO edumagDAO;

    @Override
    public List<Edumag> edumagList() throws Exception {
        return edumagDAO.edumagList();
    }

    @Override
    public Edumag edumagDetail(int no) throws Exception {
        return edumagDAO.edumagDetail(no);
    }

    @Override
    public void edumagInsert(Edumag dto) throws Exception {
        edumagDAO.edumagInsert(dto);
    }

    @Override
    public void edumagDelete(int no) throws Exception {
        edumagDAO.edumagDelete(no);
    }

    @Override
    public void edumagEdit(Edumag dto) throws Exception {
        edumagDAO.edumagEdit(dto);
    }
}
