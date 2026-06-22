<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>

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

        <div class="card-header bg-success text-white">
            <h3 class="mb-0">Add Employee</h3>
        </div>

        <div class="card-body">

            <form action="/employees" method="post">

                <div class="row">

                    <div class="col-md-6 mb-3">
                        <label class="form-label">First Name</label>
                        <input type="text"
                               name="firstName"
                               class="form-control"
                               required>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label class="form-label">Last Name</label>
                        <input type="text"
                               name="lastName"
                               class="form-control"
                               required>
                    </div>

                </div>

                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input type="email"
                           name="email"
                           class="form-control"
                           required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Department</label>
                    <input type="text"
                           name="department"
                           class="form-control">
                </div>

                <div class="row">

                    <div class="col-md-6 mb-3">
                        <label class="form-label">Salary</label>
                        <input type="number"
                               step="0.01"
                               name="salary"
                               class="form-control">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label class="form-label">Mobile Number</label>
                        <input type="text"
                               name="mobileNo"
                               class="form-control">
                    </div>

                </div>

                <div class="mb-3">
                    <label class="form-label">Date Of Joining</label>
                    <input type="date"
                           name="dateOfJoining"
                           class="form-control">
                </div>

                <button type="submit"
                        class="btn btn-success">
                    Save Employee
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