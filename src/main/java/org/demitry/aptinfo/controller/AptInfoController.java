package org.demitry.aptinfo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/aptInfo/")
public class AptInfoController {
    //아파트정보 리스트페이지
    @RequestMapping("aptInfo")
    public String aptInfo(){
        return "aptInfo/aptInfo";
    }
    //아파트정보 상세페이지
    @RequestMapping(value = "aptInfoDetail", method = RequestMethod.GET)
    public String aptInfoDetail()
    {
        return "aptInfo/aptInfoDetail";
    }

}
