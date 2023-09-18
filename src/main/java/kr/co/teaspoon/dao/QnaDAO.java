package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Qna;

import java.util.List;

public interface QnaDAO {
    public List<Qna> qnaList() throws Exception;
    public Qna qnaDetail(int qno) throws Exception;
    public void qnaInsert(Qna dto) throws Exception;
    public void qnaDelete(int qno) throws Exception;
    public void qnaEdit(Qna dto) throws Exception;
}
