package org.demitry.trade.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/trade/")
public class TradeController {
    // 일자별 거래현황 페이지
    @RequestMapping("tradeStatus")
    public String tradeStatus(){
        return "trade/tradeStatus";
    }
    // 지역별 거래현황 페이지
    @RequestMapping("tradeArea")
    public String tradeAres(){
        return "trade/tradeArea";
    }
}
