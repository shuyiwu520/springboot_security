package com.example.demo.entity;


import lombok.*;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Patient {
    private int id;
    private String card;
    private String name;
    private int gender;
    private String age;
    private String role;
    private String phone;
    private String address;
    private String email;
    private String remark;
    private String office;
    private String illness;
}
