<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Attendance</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin-left: 400px;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        table {
            border-collapse: collapse;
            width: 75%;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
            }
       
    </style>
</head>
<body>
    <h1 style="margin-left: 25%;">Attendance</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Student</th>
                <th>Course</th>
                <th>Attendance Date</th>
                <th>Present</th>
            </tr>
        </thead>
        <tbody>
            <tr th:each="attendance : ${attendance}">
                <td th:text="${attendance.id}"></td>
                <td th:text="${attendance.student.name}"></td>
                <td th:text="${attendance.course.courseName}"></td>
                <td th:text="${attendance.attendanceDate}"></td>
                <td th:text="${attendance.present ? 'Yes' : 'No'}"></td>
            </tr>
        </tbody>
    </table>
    
    
</body>
</html>