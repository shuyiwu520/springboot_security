package com.example.demo.controller.doctor;


import com.alibaba.fastjson.JSONObject;
import com.example.demo.entity.pateint.Patient;
import com.example.demo.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class DoctorController {

    @Autowired
    private DoctorService doctorService;

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
}
