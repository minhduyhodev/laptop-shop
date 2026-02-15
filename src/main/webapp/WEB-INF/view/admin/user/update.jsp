<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <jsp:include page="../layout/header.jsp" />

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

                        <form:form class="container mt-5" action="/admin/user/update" method="post"
                            modelAttribute="newUser">
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


                            <button type="submit" class="btn btn-info">Update</button>
                        </form:form>
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