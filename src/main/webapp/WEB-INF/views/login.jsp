<%--
  Created by IntelliJ IDEA.
  User: vinci
  Date: 12/15/23
  Time: 9:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" >
<body>
<div class="container">
    <div class="py-5 text-center">
        <h2>Login</h2>
    </div>

    <div class="col-md-7 col-lg-8">
        <form class="needs-validation" name="registerForm" action="loginOk" method="post">
            <div class="row g-3">
                <div class="col-12">
                    <label for="userid" class="form-label">ID </label>
                    <div class="input-group has-validation">
                        <input type="text" class="form-control" id="userid" name = "userid">
                    </div>
                </div>

                <div class="col-12">
                    <label for="password" class="form-label">Password </label>
                    <input type="text" class="form-control" id="password" name="password">
                </div>

                <hr class="my-4">
                <button class="w-100 btn btn-primary btn-lg" type="submit">login</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
