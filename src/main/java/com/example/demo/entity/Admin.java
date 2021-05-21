package com.example.demo.entity;

import lombok.*;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Admin {
    private int id;
    private String name;
    private int gender;
    private int age;
    private String phone;
    private String password;
    private String role;
    private String create_name;
}
