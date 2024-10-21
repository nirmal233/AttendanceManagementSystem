package com.attendanceManagementSystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.attendanceManagementSystem.entity.Attendance;

public interface AttendanceRepository  extends JpaRepository<Attendance, Long>{

}
