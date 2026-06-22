<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>
body{
    background:#f4f6f9;
}

.card{
    border:none;
    border-radius:15px;
}
</style>

</head>
<body>

<div class="container mt-5">

    <div class="card shadow-lg">

        <div class="card-header bg-warning">
            <h3 class="mb-0">Edit Employee</h3>
        </div>

        <div class="card-body">

            <form action="/employees/update" method="post">

                <!-- Hidden ID -->
                <input type="hidden"
                       name="id"
                       value="${employee.id}">

                <div class="row">

                    <div class="col-md-6 mb-3">
                        <label class="form-label">First Name</label>
                        <input type="text"
                               name="firstName"
                               value="${employee.firstName}"
                               class="form-control"
                               required>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label class="form-label">Last Name</label>
                        <input type="text"
                               name="lastName"
                               value="${employee.lastName}"
                               class="form-control"
                               required>
                    </div>

                </div>

                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input type="email"
                           name="email"
                           value="${employee.email}"
                           class="form-control"
                           required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Department</label>
                    <input type="text"
                           name="department"
                           value="${employee.department}"
                           class="form-control">
                </div>

                <div class="row">

                    <div class="col-md-6 mb-3">
                        <label class="form-label">Salary</label>
                        <input type="number"
                               step="0.01"
                               name="salary"
                               value="${employee.salary}"
                               class="form-control">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label class="form-label">Mobile Number</label>
                        <input type="text"
                               name="mobileNo"
                               value="${employee.mobileNo}"
                               class="form-control">
                    </div>

                </div>

                <div class="mb-3">
                    <label class="form-label">Date Of Joining</label>
                    <input type="date"
                           name="dateOfJoining"
                           value="${employee.dateOfJoining}"
                           class="form-control">
                </div>

                <button type="submit"
                        class="btn btn-warning">
                    Update Employee
                </button>

                <a href="/employees"
                   class="btn btn-secondary">
                    Back
                </a>

            </form>

        </div>

    </div>

</div>

</body>
</html>