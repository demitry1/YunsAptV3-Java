package org.demitry.notice.controller;

import org.demitry.notice.dto.NoticeDto;
import org.demitry.notice.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/notice/")
public class NoticeController {

    private NoticeService noticeService;
    // 공지사항 서비스 주입
    @Autowired
    public NoticeController(NoticeService noticeService){
        this.noticeService = noticeService;
    }

    //공지사항 리스트페이지
    @RequestMapping("notice")
    public String notice(Model model) {
        List<NoticeDto> noticeList = noticeService.getNoticeList();
        model.addAttribute("noticeList", noticeList);
        return "notice/notice";
    }

    //공지사항 상세페이지
    @RequestMapping(value = "noticeDetail", method = RequestMethod.GET)
    public String noticeDetail(){
        return "notice/noticeDetail";
    }

    //공지사항 입력
    @RequestMapping(value = "noticeInsert", method = RequestMethod.GET)
    public String noticeInsert(){
        return "notice/noticeInsert";
    }

    //공지사항 수정페이지
    @RequestMapping("noticeModify")
    public String noticeModify(){
        return "notice/noticeModify";
    }


}