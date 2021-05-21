package com.example.demo.dao.questionnaire;

import com.example.demo.entity.questionnaire.SingleChoiceQuestionnaire;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class QuestionnaireDao {
    @Autowired
    private JdbcTemplate jdbc;


    /**
     * 根据的前台的量表编号，获调查量表中的题目
     * @param level_key　传递的参数
     * @return singleChoiceQuestionnaireList 这里返回单选类型的调查量表*/
    public List<SingleChoiceQuestionnaire> getｃChoiceQuestionnaireList(String level_key) {
        String sql = " SELECT * FROM  questionnaire WHERE level_key = '1001'";
        List<SingleChoiceQuestionnaire> singleChoiceQuestionnaireList = jdbc.query(sql, new BeanPropertyRowMapper<>(SingleChoiceQuestionnaire.class));
        return singleChoiceQuestionnaireList;
    }


}
