package com.example.demo.dao.doctor;

import com.example.demo.entity.pateint.Patient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DoctorDao {

    @Autowired
    private JdbcTemplate jdbc;

    public List<Patient> getPatientInfoList(String doctorId){
        String sql = "SELECT * FROM  outpatient WHERE doctor_id = '"+ doctorId +"'";
        List<Patient> patientList = jdbc.query(sql,new BeanPropertyRowMapper<>(Patient.class));
        return patientList;
    }

    /**
     * 通过患者门诊编号，获取患者的病例、测试结果等详细信息*/
    public Patient getPatientDetailedInfo(int outpatientNo){
        String sql = "SELECT * FROM  outpatient WHERE no = '"+ outpatientNo +"'";
        List<Patient> patientList = jdbc.query(sql,new BeanPropertyRowMapper<>(Patient.class));
        Patient patient = patientList.get(0);
        return patient;
    }



}
