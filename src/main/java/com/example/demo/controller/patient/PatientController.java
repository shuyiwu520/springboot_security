package com.example.demo.controller.patient;

import com.alibaba.fastjson.JSONObject;
import com.example.demo.dao.QuestionLevelDao;
import com.example.demo.dao.patient.PatientDao;
import com.example.demo.dao.questionnaire.QuestionnaireDao;
import com.example.demo.entity.QuestionnaireLevel;
import com.example.demo.entity.pateint.Patient;
import com.example.demo.entity.pateint.PatientQuestionnaire;
import com.example.demo.entity.questionnaire.SingleChoiceQuestionnaire;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
public class PatientController {

    @Autowired
    private PatientDao patientDao;

    @Autowired
    private QuestionnaireDao questionnaireDao;
    /**
     * 通过患者账号，量表编号，进行量表问答、记录*/
    @ResponseBody
    @PostMapping(value = "/patientChoiceQuestion")
    /**前端通过Ajax直接解析请求，用实体类获得前端参数*/
    public String patientChoiceQuestion(Patient patient) {

        List<SingleChoiceQuestionnaire> singleChoiceQuestionnaireList = questionnaireDao.getChoiceQuestionnaireList("1001");
//        /**layui返回的数据格式*/
        JSONObject obj = new JSONObject();
        obj.put("code", 0);
        obj.put("msg", "");
        obj.put("count", singleChoiceQuestionnaireList.size());
        obj.put("data", singleChoiceQuestionnaireList);
        return obj.toString();
//        return "success";
    }


    /**
     * 通过患者账号，查询患者需要使用的量表*/
    @ResponseBody
    @RequestMapping("/getPatientQuestionnaireList")

    public String getPatientQuestionnaireList() {
        String idCard = "3711020001";
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
