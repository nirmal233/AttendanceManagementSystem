<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" xmlns:form="http://www.springframework.org/tags/form">
<head>
    <title>Add Attendance</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        .form-group {
            margin-bottom:  15px;
        }
        #fullform
        {
        margin-left: 40%;
        }
        #options1
        {
        
        margin: 10px;
        margin-left: 10px;
        }
        #options2
        {
        margin: 10px;
        margin-left : 15px;
        }
        #date
        {
        margin: 10px;
        margin-left: 20px;}
        #present
        {
        margin: 10px;
        margin-left: 20px;
        margin-bottom: 20px;
        }
        #show
        {
        position:absolute;
        top: 249px;
        left: 51%;
        padding : 4.5px;
        }
        #submit
        {
        margin-top : 10px;
        padding : 4px;
        
        }
    </style>
</head>
<body>
    <h1 style="margin-left:43%;">Add Attendance</h1>
    <form th:action="@{/attendance/add}" th:object="${attendance}" method="POST">
    <div id="fullform">
        <div>
            <label for="studentId">Student:</label>
            <select th:field="*{student}" id="options1" >
                <option th:each="student : ${students}" th:value="${student.id}" th:text="${student.name} "></option>
            </select>
        </div>
        <div>
            <label for="courseId">Course:</label>
            <select th:field="*{course}" id="options2" >
                <option th:each="course : ${courses}" th:value="${course.id}" th:text="${course.courseName}"></option>
            </select>
        </div>
        <div>
            <label for="attendanceDate">Attendance Date:</label>
            <input type="date" id="date" th:field="*{attendanceDate}" />
        </div>
        <div>
            <label for="present">Present:</label>
            <input type="checkbox" id="present" th:field="*{present}" />
        </div>
        <button type="submit" id="submit">Add Attendance</button>
     </div>
    </form>
    
    <form th:action="@{/attendance/showall}" method="POST">
    <button id="show">List All Attendance</button>
    </form>
</body>
