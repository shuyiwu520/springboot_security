package com.example.demo.entity;


import lombok.*;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class QuestionnaireLevel {
    private int level_id;
    private String questionnaire_key;
    private String class_name;
    private  int class1;
    private int class2;
}
