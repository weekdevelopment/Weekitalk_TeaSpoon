package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Notice;

import java.util.List;

public interface NoticeDAO {
    public List<Notice> noticeList() throws Exception;
    public Notice noticeDetail(int nno) throws Exception;
    public void noticeInsert(Notice dto) throws Exception;
    public void noticeDelete(int nno) throws Exception;
    public void noticeEdit(Notice dto) throws Exception;
}
