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

    @ResponseBody
    @RequestMapping("/ajaxTest")
    public void ajaxTest(){
        /*开始执行*/
        System.out.println("==========>>>>>>>>>.  start ajaxTest     ");
    }


    @RequestMapping("/hello")
    public String HelloTest(){
        /*开始执行*/
        System.out.println("==========>>>>>>>>>.  start HelloTest     ");
//        helloDap.HelloDaoTest();
        return "test";
    }

    @ResponseBody
    @RequestMapping("/table")
    public String BootstrapTest(){
        /*开始执行*/
       List<QuestionnaireLevel> questionnaireLevelList = questionLevelDao.getQuestionnaireLevelList();

//        Map<String, Object> result = new HashMap<String, Object>();
//        result.put("code", 0);
//        result.put("msg", "");
//        result.put("count",100);
//        result.put("data",questionnaireLevelList);
//        JSONArray array = JSONArray.fromObject(allUser);
//        result.put("data", array);
//        // 将其转换为JSON数据，并压入值栈返回
//        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
//        return "success";
        JSONObject obj = new JSONObject();
        //前台通过key值获得对应的value值
        obj.put("code", 0);
        obj.put("msg", "");
        obj.put("count", 1000);
        obj.put("data", questionnaireLevelList);
//		  array.add(obj);
        return obj.toString();
    }
}
