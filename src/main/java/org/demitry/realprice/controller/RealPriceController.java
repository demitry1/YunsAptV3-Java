package org.demitry.realprice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/realPrice/")
public class RealPriceController {
    //실거래가 매매 리스트페이지
    @RequestMapping("realPrice")
    public String realPrice(){
        return "realPrice/realPrice";
    }
    //실거래가 전월세 리스트페이지
    @RequestMapping("realPriceRent")
    public String realPriceRent(){
        return "realPrice/realPriceRent";
    }
}