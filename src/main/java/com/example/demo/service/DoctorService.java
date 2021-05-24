package com.example.demo.service;

import com.example.demo.entity.pateint.Patient;

import java.util.List;

public interface DoctorService {
    /**
     * 医生获取挂号病人的信息*/
    public List<Patient> getPatientListForDoctor(String doctorId);
}
