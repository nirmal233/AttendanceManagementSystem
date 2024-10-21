package com.attendanceManagementSystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;


import com.attendanceManagementSystem.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {
	
}
