package com.example.demo.dao.doctor;

import com.example.demo.entity.Patient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DoctorDao {

    @Autowired
    private JdbcTemplate jdbc;

    public List<Patient> getPatientInfoList(String office){
        String sql = "SELECT * FROM  patient WHERE office = '"+ office +"'";
        List<Patient> patientList = jdbc.query(sql,new BeanPropertyRowMapper<>(Patient.class));
        return patientList;
    }



}
