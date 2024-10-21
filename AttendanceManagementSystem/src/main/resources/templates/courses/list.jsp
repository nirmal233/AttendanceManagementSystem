<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Courses</title>
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
    <h1 style="margin-left:25%;">Courses</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Course Code</th>
                <th>Course Name</th>
            </tr>
        </thead>
        <tbody>
            <tr th:each="course : ${courses}">
                <td th:text="${course.id}"></td>
                <td th:text="${course.courseCode}"></td>
                <td th:text="${course.courseName}"></td>
            </tr>
        </tbody>
    </table>
</body>
</html>