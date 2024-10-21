<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Students</title>
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
    <h1 style="margin-left: 25%;">Students</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Student ID</th>
                <th>Name</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr th:each="student : ${students}">
                <td th:text="${student.id}"></td>
                <td th:text="${student.studentId}"></td>
                <td th:text="${student.name}"></td>
                <td th:text="${student.email}"></td>
            </tr>
        </tbody>
    </table>
</body>
</html>