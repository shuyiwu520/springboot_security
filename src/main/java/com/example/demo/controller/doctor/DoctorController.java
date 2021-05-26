package com.example.demo.controller.doctor;


import com.alibaba.fastjson.JSONObject;
import com.example.demo.entity.pateint.Patient;
import com.example.demo.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class DoctorController {

    @Autowired
    private DoctorService doctorService;

    /**
     * 1.查看所有调查量表，并可以保存到本地
     * 2.保存到本地的调查量表可以打印成纸质量表*/
    @RequestMapping("/getAllQuestionnaire")
    public String getAllQuestionnaire(){
        return "doctor/questionnaireList";
    }



    /**
     * 1.医生登录后，跳转到登录后的页面
     * 2.登录成功，前台传递医生账号；根据账号，查询今天的患者列表*/
    @RequestMapping("/getPatientListForDoctor")
    @ResponseBody
    public String getPatientListForDoctor(){
        List<Patient> patientList = doctorService.getPatientListForDoctor("371102001001");
        JSONObject obj = new JSONObject();
        obj.put("code", 0);
        obj.put("msg", "");
        obj.put("count", patientList.size());
        obj.put("data", patientList);
        return obj.toString();
    }

    /**
     * 医生登录成功后页面，
     * 1.根据患者的主键，获取患者的详细信息，
     * 2.给患者添加测试题，查看患者的病例、测评结果等详细信息*/
    @PostMapping("/getPatientDetailedInfo")
    @ResponseBody
    public String getPatientDetailedInfo(Patient patient){
        /*开始执行*/
        System.out.println("==========>>>>>>>>>.  start getPatientDetailedInfo()     ");
        Patient patient1 = doctorService.getPatientDetailedInfo(patient.getNo());
        System.out.println(patient1.toString());
        JSONObject obj = new JSONObject();
        obj.put("code", 0);
        obj.put("msg", "");
        obj.put("count", 1);
        obj.put("data",patient1);
        return obj.toString();
    }
    /**
     * 加载患者详细信息页面，可以给患者添加量表测试*/
    @RequestMapping("/showPatientDetailedInfo")
    public String showPatientDetailedInfo(){
        return "doctor/patientDetailedInformation";
    }
}
