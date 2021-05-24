package com.example.demo.dao;

import com.example.demo.entity.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LoginDao {

    @Autowired
    private JdbcTemplate jdbc;

    public Login loginData(String userId){
        String sql = "select * from login where card = '"+userId+ "'";
        List<Login> loginList= jdbc.query(sql,new BeanPropertyRowMapper<>(Login.class));
        Login login = loginList.get(0);
        return login;
    }


}
