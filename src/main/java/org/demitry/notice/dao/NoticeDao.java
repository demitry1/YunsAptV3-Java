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
//    private final NoticeMapper noticeMapper;
/*    public List<NoticeDto> getNoticeList(@Param("nfrom") int nfrom, @Param("nto") int nto) {
        List<NoticeDto> noticeList = noticeMapper.getNoticeList(nfrom, nto);
        return noticeList;
    }*/
    @Autowired
    SqlSessionTemplate sqlSessionTemplate;

    public List<NoticeDto> getNoticeList() {
        HashMap<String, Integer> noticeMap = new HashMap<String, Integer>();
        noticeMap.put("nfrom",1);
        noticeMap.put("nto",10);
        List<NoticeDto> noticeList = sqlSessionTemplate.selectList("notice_dao_getNoticeList", noticeMap);
        return noticeList;
    }
}
