package com.example.demo.controller.doctor;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.example.demo.dao.doctor.DoctorDao;
import com.example.demo.entity.Patient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class DoctorController {

    @Autowired
    private DoctorDao doctorDao;

    @RequestMapping("/getPatientListForDoctor")
    @ResponseBody
    public String getPatientListForDoctor(){
        List<Patient> patientList = doctorDao.getPatientInfoList("4005");
        System.out.println("===========>>>>>>>> controller >>>>>>> getPatientListForDoctor()  ");
        System.out.println(patientList.get(0).toString());
        JSONObject obj = new JSONObject();
        //前台通过key值获得对应的value值
        obj.put("code", 0);
        obj.put("msg", "");
        obj.put("count", patientList.size());
        obj.put("data", patientList);
        return obj.toString();
    }
}
