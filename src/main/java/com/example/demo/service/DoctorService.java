package com.example.demo.service;

import com.example.demo.entity.pateint.Patient;

import java.util.List;

public interface DoctorService {
    /**
     * 医生获取挂号病人的信息
     * @param doctorId 医生账号
     * @return list 返回患者列表，查看今天挂号的患者
     * */
    public List<Patient> getPatientListForDoctor(String doctorId);


    /**
     * 根据患者的门诊编号获取患者详细信息
     * @param outpatientNo 患者门诊编号
     * @return patient 患者详细信息
     * */
    public Patient getPatientDetailedInfo(int outpatientNo);

}
