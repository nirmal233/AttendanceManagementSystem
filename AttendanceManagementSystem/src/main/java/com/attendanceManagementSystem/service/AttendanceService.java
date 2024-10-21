package com.attendanceManagementSystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.attendanceManagementSystem.entity.Attendance;
import com.attendanceManagementSystem.repository.AttendanceRepository;

@Service
public class AttendanceService {
	
	@Autowired
    private AttendanceRepository attendanceRepository;

    public List<Attendance> getAllAttendance()
 {
        return attendanceRepository.findAll();
    }

    public void saveAttendance(Attendance attendance) {
        attendanceRepository.save(attendance);
    }

}
