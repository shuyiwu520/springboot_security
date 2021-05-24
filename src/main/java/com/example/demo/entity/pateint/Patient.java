package com.example.demo.entity.pateint;


import lombok.*;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Patient {
    /**自增主键*/
    private int id;
    /**身份证号*/
    private String id_card;
    /**门诊编号*/
    private int no;
    /**挂号医生*/
    private String doctor_id;
    /**就诊卡号*/
    private String medical_card;
    /**患者类型*/
    private String patient_type;
    /**姓名*/
    private String name;
    /**性别*/
    private int gender;
    /**年龄*/
    private String age;
    /**患者角色，编码：2*/
    private String role;
    /**电话号码*/
    private String phone;
    /**家庭住址*/
    private String address;
    /**email*/
    private String email;
    /**备注*/
    private String remark;
    /**所挂科室*/
    private String office;
    /**病情*/
    private String illness;
}
