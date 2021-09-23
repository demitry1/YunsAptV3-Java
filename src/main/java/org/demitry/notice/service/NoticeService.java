package org.demitry.notice.service;

import org.demitry.notice.dao.NoticeDao;
import org.demitry.notice.dto.NoticeDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeService {

    private NoticeDao noticeDao;

    @Autowired
    public NoticeService(NoticeDao noticeDao){
        this.noticeDao = noticeDao;
    }
    // 공지사항 리스트 가져오기
    public List<NoticeDto> getNoticeList() {
        List<NoticeDto> noticeList = noticeDao.getNoticeList();
        return noticeList;
    }

}
