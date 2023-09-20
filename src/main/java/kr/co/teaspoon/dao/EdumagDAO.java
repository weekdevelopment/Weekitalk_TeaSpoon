package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Edumag;

import java.util.List;

public interface EdumagDAO {
    public List<Edumag> edumagList() throws Exception;
    public Edumag edumagDetail(int no) throws Exception;
    public void edumagInsert(Edumag dto) throws Exception;
    public void edumagDelete(int no) throws Exception;
    public void edumagEdit(Edumag dto) throws Exception;
}
