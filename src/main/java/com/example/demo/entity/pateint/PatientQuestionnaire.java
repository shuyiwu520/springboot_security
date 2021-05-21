package com.example.demo.entity.pateint;


import lombok.*;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class PatientQuestionnaire {
    private int id;
    private String card;
    private String name;
    private String questionnaire_key;
    private String questionnaire_name;
    private String office;
    private String remark;
    private String create_name;
    private String create_time;
    private String update_name;
    private String update_time;
}
