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
    public List<NoticeDto> getNoticeList(String nFindSel, String  nSearch, int page) {
        List<NoticeDto> noticeList = noticeDao.getNoticeList(nFindSel, nSearch, page);
        return noticeList;
    }
    // 공지사항 카운트 가져오기
    public List<Integer> getNoticeCount(String nFindSel, String  nSearch) {
        List<Integer> noticeCount = noticeDao.getNoticeCount(nFindSel, nSearch);
        return noticeCount;
    }
    // 공지사항 세부내역 가져오기 & 조회수(+1) 업데이트
    public List<NoticeDto> getNoticeDetail(int id) {
        List<NoticeDto> noticeDetail = noticeDao.getNoticeDetail(id); // 세부내역 가져오기
        int nHit = Integer.parseInt(noticeDetail.get(0).getHit())+ 1;  //기존 조회수 카운트 + 1
        noticeDao.updateHitCount(id, nHit);  // 카운트 DB 갱신
        return noticeDetail;
    }
}
