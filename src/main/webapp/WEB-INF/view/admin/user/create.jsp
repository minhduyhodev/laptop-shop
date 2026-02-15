<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <jsp:include page="../layout/header.jsp" />
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

            <script>
                $(document).ready(function () {
                    const avatarFile = $("#avatarFile");

                    avatarFile.change(function (e) {
                        const imgURL = URL.createObjectURL(e.target.files[0]);
                        $("#avatarPreview").attr("src", imgURL);
                        $("#avatarPreview").css("display", "block");
                    });
                });
            </script>

            <div id="layoutSidenav">
                <div id="layoutSidenav_nav">
                    <jsp:include page="../layout/sidebar.jsp" />
                </div>

                <div id="layoutSidenav_content">
                    <main class="container-fluid px-4">
                        <h1 class="mt-4">Manage User</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item">
                                <a href=" /admin">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">users</li>
                        </ol>
                        <div class="row justify-content-center">
                            <div class="col-md-8">
                                <form:form class="container mt-5" action="/admin/user/create" method="post"
                                    modelAttribute="newUser" enctype="multipart/form-data">
                                    <h1>Create a user</h1>
                                    <div class="row">
                                        <div class="form-group mb-3 col-md-6">
                                            <label for="exampleFormControlInput1">Email</label>
                                            <form:input type="email" class="form-control" path="email" />
                                        </div>
                                        <div class="form-group mb-3 col-md-6">
                                            <label for="exampleFormControlInput1">Password:</label>
                                            <form:input type="text" class="form-control" path="password" />
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="form-group mb-3 col-md-6">
                                            <label for="exampleFormControlInput1">Phone Number:</label>
                                            <form:input type="text" class="form-control" path="phone" />
                                        </div>
                                        <div class="form-group mb-3 col-md-6">
                                            <label for="exampleFormControlInput1">Full Name</label>
                                            <form:input type="text" class="form-control" path="fullName" />
                                        </div>
                                    </div>


                                    <label for="exampleFormControlInput1">Address</label>
                                    <form:input type="text" class="form-control mb-3" path="address" />

                                    <div class="row">
                                        <div class="form-group mb-3 col-md-6">
                                            <label for="exampleFormControlInput1">Role:</label>
                                            <form:select class="form-select form-select-sm" path="role.name"
                                                aria-label="Small select example" style="padding-bottom: 10px;">
                                                <form:option value="ADMIN">ADMIN</form:option>
                                                <form:option value="USER">USER</form:option>
                                            </form:select>
                                        </div>

                                        <div class="form-group mb-3 col-md-6">
                                            <label for="avatarFile">Avatar:</label>
                                            <input class="form-control" type="file" id="avatarFile"
                                                accept=".jpg, .png, .jpeg" name="hoidanitFile" />
                                        </div>

                                        <div class="col-12 mb-3">
                                            <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                id="avatarPreview" />
                                        </div>

                                    </div>

                                    <button type="submit" class="btn btn-info">Create</button>
                                </form:form>
                            </div>
                        </div>
                </div>
                </main>

            </div>
            <jsp:include page="../layout/footer.jsp" />
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                crossorigin="anonymous"></script>
            <script src="../js/scripts.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                crossorigin="anonymous"></script>
            <script src="../js/chart-area-demo.js"></script>
            <script src="../js/chart-bar-demo.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                crossorigin="anonymous"></script>
            <script src="../js/datatables-simple-demo.js"></script>
            </body>

            </html>