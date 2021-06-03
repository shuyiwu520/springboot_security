package com.example.demo.entity.questionnaire;


import lombok.*;

@Setter
@Getter
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SingleSkipQuestionnaire {
    private int question_id;
    private String questionnaire_level_key;
    private String questionnaire_key;
    private String question;
    private String questionnaire_options;
    private String questionnaire_score;
    private String questionnaire_type;
    private String create_name;
    private String create_time;
    private String status;
}
