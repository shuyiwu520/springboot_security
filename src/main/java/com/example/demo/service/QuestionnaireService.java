package com.example.demo.service;


import com.example.demo.entity.questionnaire.SingleSkipQuestionnaire;

public interface QuestionnaireService {

    public SingleSkipQuestionnaire getSkipQuestionnaire(String level_key);
}
