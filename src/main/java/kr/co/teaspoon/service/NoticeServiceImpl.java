package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.NoticeDAO;
import kr.co.teaspoon.dto.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService{
    @Autowired
    private NoticeDAO noticeDAO;

    @Override
    public List<Notice> noticeList() throws Exception {
        return noticeDAO.noticeList();
    }

    @Override
    public Notice noticeDetail(int nno) throws Exception {
        return noticeDAO.noticeDetail(nno);
    }

    @Override
    public void noticeInsert(Notice dto) throws Exception {
        noticeDAO.noticeInsert(dto);
    }

    @Override
    public void noticeDelete(int nno) throws Exception {
        noticeDAO.noticeDelete(nno);
    }

    @Override
    public void noticeEdit(Notice dto) throws Exception {
        noticeDAO.noticeEdit(dto);
    }
}
