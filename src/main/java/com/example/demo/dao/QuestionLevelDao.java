package com.example.demo.dao;

import com.example.demo.entity.QuestionnaireLevel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class QuestionLevelDao {

    @Autowired
    private JdbcTemplate jdbc;

    public List<QuestionnaireLevel> getQuestionnaireLevelList(){
        String sql = "SELECT * from questionnaire_level";
        List<QuestionnaireLevel> questionnaireLevelList = jdbc.query(sql,new BeanPropertyRowMapper<>(QuestionnaireLevel.class));
        return questionnaireLevelList;
    }

}
