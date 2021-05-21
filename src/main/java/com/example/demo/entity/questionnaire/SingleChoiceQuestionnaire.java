package com.example.demo.entity.questionnaire;


import lombok.*;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class SingleChoiceQuestionnaire {
    private String level_key;
    private  String question_key;
    private  String question;
    private  String questionnaire_options;
    private  String score;
    private  String create_name;
    private  String create_time;

}
