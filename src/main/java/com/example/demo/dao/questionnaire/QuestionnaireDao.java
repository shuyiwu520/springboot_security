package com.example.demo.dao.questionnaire;

import com.example.demo.entity.questionnaire.Questionnaire;
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
    public List<SingleChoiceQuestionnaire> getChoiceQuestionnaireList(String level_key) {
        String sql = " SELECT * FROM  questionnaire WHERE level_key = '1001'";
        List<SingleChoiceQuestionnaire> singleChoiceQuestionnaireList = jdbc.query(sql, new BeanPropertyRowMapper<>(SingleChoiceQuestionnaire.class));
        return singleChoiceQuestionnaireList;
    }

    /**
     * 查询跳转量表类的数据，
     * @param level_key 根据量表编号查询量表
     *
     * */
    public List<Questionnaire> getSkipQuestionnaireList(String level_key) {
        String sql = " SELECT * FROM  questionnaire WHERE questionnaire_level_key = '" + level_key + "'";
        List<Questionnaire> QuestionnaireList = jdbc.query(sql, new BeanPropertyRowMapper<>(Questionnaire.class));
        return QuestionnaireList;
    }


}
