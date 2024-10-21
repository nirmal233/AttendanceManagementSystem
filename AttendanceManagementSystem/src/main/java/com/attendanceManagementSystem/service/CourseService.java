package com.attendanceManagementSystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.attendanceManagementSystem.entity.Course;
import com.attendanceManagementSystem.repository.CourseRepository;

@Service
public class CourseService {
	
	@Autowired
    private CourseRepository courseRepository;

    public List<Course> getAllCourses()
 {
        return courseRepository.findAll();
    }

    public void saveCourse(Course course) {
        courseRepository.save(course);

    }

}
