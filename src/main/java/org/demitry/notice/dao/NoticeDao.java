package org.demitry.notice.dao;

import lombok.RequiredArgsConstructor;
import org.demitry.notice.dto.NoticeDto;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
@RequiredArgsConstructor  //final변수를 매개변수로 생성자 자동 생성 & 생성자를 통한 자동 주입
public class NoticeDao {

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;
    // 공지사항 리스트 가져오기
    public List<NoticeDto> getNoticeList(String nFindSel, String  nSearch, int page) {
        HashMap<String, String> noticeMap = new HashMap<String, String>();
        noticeMap.put("nFindSel",nFindSel);
        noticeMap.put("nSearch","%"+nSearch+"%");
        noticeMap.put("nFrom", String.valueOf((1+(page-1)*10)));
        noticeMap.put("nTo", String.valueOf(page*10));

        List<NoticeDto> noticeList = sqlSessionTemplate.selectList("notice_dao_getNoticeList", noticeMap);
        return noticeList;
    }
    // 공지사항 카운트 가져오기
    public List<Integer> getNoticeCount(String nFindSel, String  nSearch) {
        HashMap<String, String> noticeMap = new HashMap<String, String>();
        noticeMap.put("nFindSel",nFindSel);
        noticeMap.put("nSearch","%"+nSearch+"%");

        List<Integer> noticeCount = sqlSessionTemplate.selectList("notice_getNoticeCount", noticeMap);
        return noticeCount;
    }
    // 공지사항 세부내역 가져오기
    public List<NoticeDto> getNoticeDetail(int id) {
        List<NoticeDto> noticeDetail = sqlSessionTemplate.selectList("notice_getNoticeDetail", id);
        return noticeDetail;
    }
    // 공지사항 조회수 갱신
    public void updateHitCount(int id, int nHit) {
        HashMap<String, Integer> noticeMap = new HashMap<String, Integer>();
        noticeMap.put("nId", id);
        noticeMap.put("nHit",nHit);
        int i = sqlSessionTemplate.update("notice_updateHitCount", noticeMap);
    }

}
