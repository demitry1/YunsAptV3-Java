package org.demitry.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    //인덱스 페이지
    @RequestMapping(value={"/","/index"}, method = RequestMethod.GET)
    public String home(){
        return "/index";
    }
    //에러 페이지
    @RequestMapping(value="/error", method = RequestMethod.GET)
    public String error404(){
        return "error404";
    }

}
