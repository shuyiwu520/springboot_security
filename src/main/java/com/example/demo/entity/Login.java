package com.example.demo.entity;


import lombok.*;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Login {
    private String card;
    private String name;
    private String age;
    private String login_role;
    private String password;
}
