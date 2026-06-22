<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Employees</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>
body{
    background-color:#f8f9fa;
}
</style>

</head>
<body>

<div class="container mt-5">

    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2>Employee List</h2>

        <a href="/employees/new"
           class="btn btn-success">
            Add Employee
        </a>
    </div>

    <div class="card shadow">

        <div class="card-body">

            <table class="table table-bordered table-hover">

                <thead class="table-dark">

                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Department</th>
                    <th>Salary</th>
                    <th>Mobile No</th>
                    <th>Date Of Joining</th>
                    <th>Actions</th>
                </tr>

                </thead>

                <tbody>

                <c:forEach var="emp" items="${employees}">

                    <tr>

                        <td>${emp.id}</td>
                        <td>${emp.firstName}</td>
                        <td>${emp.lastName}</td>
                        <td>${emp.email}</td>
                        <td>${emp.department}</td>
                        <td>${emp.salary}</td>
                        <td>${emp.mobileNo}</td>
                        <td>${emp.dateOfJoining}</td>

                        <td>

                            <a href="/employees/edit/${emp.id}"
                               class="btn btn-warning btn-sm">
                                Edit
                            </a>

                            <a href="/employees/delete/${emp.id}"
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Are you sure you want to delete this employee?')">
                                Delete
                            </a>

                        </td>

                    </tr>

                </c:forEach>

                </tbody>

            </table>

            <a href="/"
               class="btn btn-secondary">
                Home
            </a>

        </div>

    </div>

</div>

</body>
</html>