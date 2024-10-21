package com.attendanceManagementSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.attendanceManagementSystem.entity.Attendance;
import com.attendanceManagementSystem.service.AttendanceService;
import com.attendanceManagementSystem.service.CourseService;
import com.attendanceManagementSystem.service.StudentService;


@Controller
@RequestMapping("/attendance")
public class AttendanceController {
    @Autowired
    private AttendanceService attendanceService;
    @Autowired
    private StudentService studentService;
    @Autowired
    private CourseService courseService;
    
    @GetMapping
    public String listAttendance(Model model) {
        model.addAttribute("attendance", attendanceService.getAllAttendance());
        return "attendance/list";
    }

    @GetMapping("/add")
    public String addAttendanceForm(Model model) {
        model.addAttribute("attendance", new Attendance());
        model.addAttribute("students", studentService.getAllStudents());
        model.addAttribute("courses", courseService.getAllCourses());
        return "attendance/add";
    }

    @PostMapping("/add")
    public String addAttendance(@ModelAttribute Attendance attendance) {
        attendanceService.saveAttendance(attendance);
        return "attendance/submit";
    }
    
    @PostMapping("/showall")
    public String showallattendance() {
        
        return "redirect:/attendance";
    }
    
    
    

}