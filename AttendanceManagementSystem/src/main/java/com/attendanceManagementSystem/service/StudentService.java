package com.attendanceManagementSystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.attendanceManagementSystem.entity.Student;
import com.attendanceManagementSystem.repository.StudentRepository;

@Service
public class StudentService {
	@Autowired
    private StudentRepository studentRepository;

    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    public void saveStudent(Student student) {
        studentRepository.save(student);

    }

	public void deletebyid(long id) {
		studentRepository.deleteById(id);
	}

}
