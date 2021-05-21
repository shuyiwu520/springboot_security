package com.example.demo.controller;

import com.alibaba.fastjson.JSONObject;
import com.example.demo.dao.QuestionLevelDao;
import com.example.demo.dao.patient.PatientDao;
import com.example.demo.entity.QuestionnaireLevel;
import com.example.demo.entity.pateint.PatientQuestionnaire;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class PatientController {

    @Autowired
    private PatientDao patientDao;

    @ResponseBody
    @RequestMapping("/getPatientQuestionnaireList")
    public String getPatientQuestionnaireList(){

        String idCard = "3711020001";
        /**
         * 通过患者账号，查询患者需要使用的量表*/
       List<PatientQuestionnaire> patientQuestionnaireList = patientDao.getPatientQuestionnaireList(idCard);
        System.out.println("======>>>>>>> PatientController   >>>>>>>>>>>  getPatientQuestionnaireList()");
        System.out.println(patientQuestionnaireList.get(0).toString());
       JSONObject obj = new JSONObject();
        //前台通过key值获得对应的value值
        obj.put("code", 0);
        obj.put("msg", "");
        obj.put("count", patientQuestionnaireList.size());
        obj.put("data", patientQuestionnaireList);
        return obj.toString();
    }
}
