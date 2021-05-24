package com.example.demo.service.doctor;

import com.example.demo.dao.doctor.DoctorDao;
import com.example.demo.entity.pateint.Patient;
import com.example.demo.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DoctorServiceImp implements DoctorService {

    @Autowired
    private DoctorDao doctorDao;
    @Override
    public List<Patient> getPatientListForDoctor(String doctorId) {
        List<Patient> patientList = doctorDao.getPatientInfoList(doctorId);
        return patientList;
    }
}
