<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mahdibagheri
  Date: 3/13/25
  Time: 8:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Person Details</title>
    <jsp:include page="WEB-INF/head.jsp"/>

</head>
<body>
<jsp:include page="WEB-INF/navbar.jsp"/>
<div class="container">
    <div class="card">
        <div class="card-header">
            Person Details
        </div>
        <div class="card-body">
            <form action="/person/update.do">
                <div class="form-group row">
                    <label for="id" class="col-sm-2 col-form-label">ID</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="id" name="id" value="${requestScope.person.id}" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="firstName" class="col-sm-2 col-form-label">First Name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="firstName" name="firstName"
                               value="${requestScope.person.firstName}">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="lastName" class="col-sm-2 col-form-label">Last Name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="lastName" name="lastName"
                               value="${requestScope.person.lastName}">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="nationalId" class="col-sm-2 col-form-label">National ID</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nationalId" name="nationalId"
                               value="${requestScope.person.nationalId}">
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-sm-10">
                        <input type="submit" class="btn btn-primary" value="Update"/>
                        <input type="button" class="btn btn-danger" value="Delete"
                               onclick="deletePerson(${requestScope.person.id})">
                    </div>
                </div>
            </form>
        </div>
    </div>


</div>
<script>
    function gotoUpdate(id) {
        window.location = "/person/update.do?id=" + id;
    }

    function deletePerson(id) {
        if (confirm("Are you sure want to delete person with id " + id)) {
            window.location = "/person/delete.do?id=" + id;
        }
    }
</script>
</body>
</html>
