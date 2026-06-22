<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>
body{
    background-color:#f8f9fa;
}

.hero{
    margin-top:100px;
}

.card{
    border:none;
    border-radius:15px;
}
</style>

</head>

<body>

<div class="container hero">

    <div class="card shadow-lg p-5 text-center">

        <h1 class="display-5 fw-bold text-primary">
            Employee Management System
        </h1>

        <p class="lead mt-3">
            Manage employee records efficiently using Spring Boot, JSP and PostgreSQL.
        </p>

        <div class="mt-4">

            <a href="/employees"
               class="btn btn-primary btn-lg me-3">
               View Employees
            </a>

            <a href="/employees/new"
               class="btn btn-success btn-lg">
               Add Employee
            </a>

        </div>

    </div>

</div>

</body>
</html>