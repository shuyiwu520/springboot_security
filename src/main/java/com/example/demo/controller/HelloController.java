package com.example.demo.controller;


import com.alibaba.fastjson.JSONObject;
import com.example.demo.dao.HelloDap;
import com.example.demo.dao.QuestionLevelDao;
import com.example.demo.entity.QuestionnaireLevel;
import com.example.demo.entity.questionnaire.SingleSkipQuestionnaire;
import com.example.demo.service.QuestionnaireService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Arrays;
import java.util.List;

@Controller
public class HelloController {


    @Autowired
    private QuestionnaireService questionnaireService;


    @RequestMapping("/patientExamineInfo")
    public String patientExamineInfoTest(){
        /*开始执行*/
        System.out.println("==========>>>>>>>>>.  start patientExamineInfoTest     ");


        return "doctor/patientExamineInfo";
    }

    @RequestMapping("/hello")
    public String HelloTest(){
        /*开始执行*/
        System.out.println("==========>>>>>>>>>.  start HelloTest     ");
        SingleSkipQuestionnaire singleSkipQuestionnaire = questionnaireService.getSkipQuestionnaire("1002");
        String[] skipList = singleSkipQuestionnaire.getQuestionnaire_options().split(";");
        System.out.println("==========>> helloTest 打印跳转量表");
        System.out.println(singleSkipQuestionnaire.getQuestionnaire_options() instanceof String);
        for (String s : skipList){
            System.out.println(s);
        }

        return "questionnaire/singleChoice";
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


}
