package com.example.demo.controller;


import com.example.demo.dao.HelloDap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.xml.ws.RequestWrapper;

@Controller
public class HelloController {

    @Autowired
    private HelloDap helloDap;


    @RequestMapping("/hello")
    public String HelloTest(){
        /*开始执行*/
        System.out.println("==========>>>>>>>>>.  start      ");
        helloDap.HelloDaoTest();
        return "success";
    }
}
