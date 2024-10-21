<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" xmlns:form="http://www.springframework.org/tags/form">
<head>
    <title>Add Student</title>
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
        #id
        {
        margin : 10px;
        margin-left:20px;
        }
        #name
        {
        margin : 10px;
        margin-left:53px;
        }
        #email
        {
        margin : 10px;
        margin-left : 56px;
        }
        #fullform
        {
        margin-left : 40%;
        }
        #show
        {
        position:absolute;
     top: 210px;
        left: 51%;
        padding : 5px;
        }
        #submit
        {
        margin-top : 10px;
                padding : 4px;
        
        }
        
        
    </style>
</head>
<body>
    <h1 style="margin-left:43%">Add Student</h1>
    <form th:action="@{/students/add}" th:object="${student}" method="POST">
    <div id="fullform">
        <div class="id">
            <label for="studentId">Student ID:</label>
            <input type="text" id="id" th:field="*{studentId}" required/>
        </div>
        <div >
            <label for="name">Name:</label>
            <input type="text" id="name" th:field="*{name}" required />
        </div>
        <div>
            <label for="email">Email:</label>
            <input type="text" id="email" th:field="*{email}" required/>
        </div>
        <button type="submit" id="submit">Add Student</button>
        
        </form>
    </div>
     <form th:action="@{/students/showall}" method="POST">
    <button id="show">List All Students</button>
    
    
</body>
