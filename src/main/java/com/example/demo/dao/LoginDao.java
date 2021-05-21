package com.example.demo.dao;

import com.example.demo.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LoginDao {

    @Autowired
    private JdbcTemplate jdbc;

    public Admin loginData(String userId){
        String sql = "select * from patient where card = '"+userId+ "'";
        List<Admin> adminList = jdbc.query(sql,new BeanPropertyRowMapper<>(Admin.class));
        Admin admin = adminList.get(0);
        return admin;
    }


}
