<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Update</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                    crossorigin="anonymous">
            </head>

            <body>
                <form:form class="container mt-5" action="/admin/user/update" method="post" modelAttribute="newUser">
                    <h1>Update</h1>
                    <hr>
                    <div class="form-group" style="display: none;">
                        <label for="exampleFormControlInput1">Id:</label>
                        <form:input type="text" class="form-control" path="id" />
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Email</label>
                        <form:input type="email" class="form-control" path="email" disabled="true" />
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlInput1">Phone Number:</label>
                        <form:input type="text" class="form-control" path="phone" />
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Full Name</label>
                        <form:input type="text" class="form-control" path="fullName" />
                    </div>
                    <label for="exampleFormControlInput1">Address</label>
                    <form:input type="text" class="form-control" path="address" />
                    </div>

                    <button type="submit" class="btn btn-info">Update</button>
                </form:form>
            </body>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

            </html>