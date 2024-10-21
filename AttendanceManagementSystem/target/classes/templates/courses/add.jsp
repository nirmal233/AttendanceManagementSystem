<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" xmlns:form="http://www.springframework.org/tags/form">
<head>
    <title>Add Course</title>
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
            margin-bottom: 15px;
        }
        #fullform
        {
        margin-left: 40%;}
        #code
        {
        margin-left: 20px;
        margin : 10px;
        }
        #cname
        {
        margin-left: 5px;
        margin-top : 10px;
        margin-bottom: 20px;
        }
        #show
        {
        position:absolute;
        top: 180px;
        left: 51%;
        padding : 4.8px;
        }
        #submit
        {
        margin-top : 10px;
        padding : 4px;
        
        }
    </style>
</head>
<body>
    <h1 style="margin-left:43%">Add Course</h1>
    <form th:action="@{/courses/add}" th:object="${course}" method="POST">
    <div id="fullform">
    
        <div>
            <label for="courseCode">Course Code:</label>
            <input type="text" id="code" th:field="*{courseCode}" required />
        </div>
        <div>
            <label for="courseName">Course Name:</label>
            <input type="text" id="cname" th:field="*{courseName}"  required/>
        </div>
        <button type="submit" id="submit">Add Course</button>
        
    </div>
    </form>
    <form th:action="@{/courses/showall}" method="POST">
    <button id="show">List All Courses</button>
    </form>
</body>
