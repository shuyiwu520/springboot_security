package com.example.demo.dao.patient;

import com.example.demo.entity.pateint.PatientQuestionnaire;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PatientDao {

    @Autowired
    private JdbcTemplate jdbc;

    /**
     * 获取患者需要的所有量表*/
    public List<PatientQuestionnaire> getPatientQuestionnaireList(String idCard){
        String sql = "SELECT * from patient_questionenaire WHERE card = '" + idCard +"' ";
        List<PatientQuestionnaire> patientQuestionnaireList = jdbc.query(sql,new BeanPropertyRowMapper<>(PatientQuestionnaire.class));
        System.out.println("=============>>>>>>>>>>  getPatientQuestionnaireList");
        return patientQuestionnaireList;
    }

}
