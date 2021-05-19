package com.example.demo.dao;


import com.example.demo.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class HelloDap {


    @Autowired
    private JdbcTemplate jdbc;

    public void HelloDaoTest(){
        String sql = "select * from admin";
        List<Admin> adminList = jdbc.query(sql,new BeanPropertyRowMapper<>(Admin.class));

//        System.out.println(adminList.get(0).toString());
        for(Admin admin : adminList){
            System.out.println(admin.toString());
        }

    }
}
