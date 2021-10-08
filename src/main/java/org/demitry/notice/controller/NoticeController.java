package org.demitry.notice.controller;

import org.demitry.notice.dto.NoticeDto;
import org.demitry.notice.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
    @GetMapping("notice")
    public String notice(@RequestParam(value = "nFindSel", defaultValue = "title", required = false) String nFindSel,
                         @RequestParam(value = "nSearch", defaultValue = "", required = false) String nSearch,
                         @RequestParam(value = "page", defaultValue = "1", required = false) int page,
                         Model model) {
        List<NoticeDto> noticeList = noticeService.getNoticeList(nFindSel, nSearch, page); //공지사항 리스트
        List<Integer> noticeCount  = noticeService.getNoticeCount(nFindSel, nSearch); //공지사항 카운트

        model.addAttribute("noticeList", noticeList);
        model.addAttribute("qCount", noticeCount.get(0)); //검색카운트
        model.addAttribute("totCount", noticeCount.get(1)); //총카운트
        return "notice/notice";
    }

    //공지사항 상세페이지
    @GetMapping("noticeDetail")
    public String noticeDetail(@RequestParam(value = "id") int id,
                               Model model) {
        List<NoticeDto> noticeDetail = noticeService.getNoticeDetail(id); //공지사항 세부내역

        model.addAttribute("noticeDetail", noticeDetail);
        return "notice/noticeDetail";
    }

    //공지사항 입력
    @GetMapping("noticeInsert")
    public String noticeInsert(){
        return "notice/noticeInsert";
    }

    //공지사항 수정페이지
    @PostMapping("noticeModify")
    public String noticeModify(){
        return "notice/noticeModify";
    }


}