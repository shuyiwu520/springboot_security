package com.example.demo.controller;


import com.example.demo.dao.LoginDao;
import com.example.demo.entity.Login;
import com.example.demo.util.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @Autowired
    private LoginDao loginDao;

    @RequestMapping("/loginController")
    public String loginController(@RequestParam("username") String idCard,
                                  @RequestParam("password") String password){
        Login login = loginDao.loginData(idCard);
        String role = login.getLogin_role();
        System.out.println("=====>>>> loginController()");
        System.out.println(login.toString());
        /**通过后台查询用户的角色进行过滤选择*/
        if (Constants.DOCTOR.equals(role)){
            return "doctor/doctorLoginSuccess";
        }else if (Constants.PATIENT.equals(role)){
            return "patient/patientLoginSuccess";
        }else {
            return "admin/adminLoginSuccess";
        }
    }
}
