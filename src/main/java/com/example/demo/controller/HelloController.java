package com.example.demo.controller;


import com.alibaba.fastjson.JSONObject;
import com.example.demo.dao.HelloDap;
import com.example.demo.dao.QuestionLevelDao;
import com.example.demo.entity.QuestionnaireLevel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class HelloController {

    @Autowired
    private HelloDap helloDap;
    @Autowired
    private QuestionLevelDao questionLevelDao;

    /**医生登录成功后页面*/
    @RequestMapping("/getPatientDetailedInfo")
    public String getPatientDetailedInfo(){
        /*开始执行*/
        System.out.println("==========>>>>>>>>>.  start getPatientDetailedInfo()     ");
        return "doctor/patientDetailedInformation";
    }



    @ResponseBody
    @RequestMapping("/ajaxTest")
    public String ajaxTest(){
        /*开始执行*/
        System.out.println("==========>>>>>>>>>.  start ajaxTest     ");
        JSONObject obj = new JSONObject();
        //前台通过key值获得对应的value值
        obj.put("code", 0);
        obj.put("msg", "");
        obj.put("count", 100);
        obj.put("data", "www");
//		  array.add(obj);
        return obj.toString();
    }


    @RequestMapping("/hello")
    public String HelloTest(){
        /*开始执行*/
        System.out.println("==========>>>>>>>>>.  start HelloTest     ");
//        helloDap.HelloDaoTest();
        return "test/echartsData";
    }

    @ResponseBody
    @RequestMapping("/table")
    public String BootstrapTest(){
        /*开始执行*/
       List<QuestionnaireLevel> questionnaireLevelList = questionLevelDao.getQuestionnaireLevelList();
        JSONObject obj = new JSONObject();
        //前台通过key值获得对应的value值
        obj.put("code", 0);
        obj.put("msg", "");
        obj.put("count", 100);
        obj.put("data", questionnaireLevelList);
//		  array.add(obj);
        return obj.toString();
    }
}
