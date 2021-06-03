package com.example.demo.service.questionnaire;

import com.example.demo.dao.questionnaire.QuestionnaireDao;
import com.example.demo.entity.questionnaire.Questionnaire;
import com.example.demo.entity.questionnaire.SingleSkipQuestionnaire;
import com.example.demo.service.QuestionnaireService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.w3c.dom.stylesheets.LinkStyle;

import java.util.List;

@Service
public class QuestionnaireServiceImp implements QuestionnaireService {

    @Autowired
    private QuestionnaireDao questionnaireDao;

    @Override
    public SingleSkipQuestionnaire getSkipQuestionnaire(String level_key) {
        //todo 编写跳转量表逻辑
        List<Questionnaire> questionnaireList = questionnaireDao.getSkipQuestionnaireList(level_key);
        SingleSkipQuestionnaire singleSkipQuestionnaire = new SingleSkipQuestionnaire();
        if ("4".equals(questionnaireList.get(0).getQuestionnaire_type())){
            System.out.println(questionnaireList.get(0));
            Questionnaire questionnaire = questionnaireList.get(0);

            singleSkipQuestionnaire = SingleSkipQuestionnaire.builder()
                    .question_id(questionnaire.getQuestion_id())
                    .questionnaire_key(questionnaire.getQuestionnaire_key())
                    .questionnaire_score(questionnaire.getQuestionnaire_score())
                    .questionnaire_type(questionnaire.getQuestionnaire_type())
                    .question(questionnaire.getQuestion())
                    .questionnaire_options(questionnaire.getQuestionnaire_options())
                    .questionnaire_level_key(questionnaire.getQuestionnaire_level_key())
                    .build();
        }
        System.out.println("========>>>>>>>>>>>> 外部打印");
        System.out.println(singleSkipQuestionnaire);
        return singleSkipQuestionnaire;
    }
}
