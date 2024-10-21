package com.attendanceManagementSystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.attendanceManagementSystem.entity.Course;

public interface CourseRepository extends JpaRepository<Course, Long> {

}
