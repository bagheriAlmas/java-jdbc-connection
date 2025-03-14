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
    <title>Save Person</title>
    <jsp:include page="WEB-INF/head.jsp"/>
</head>
<body>
<jsp:include page="WEB-INF/navbar.jsp"/>
<div class="container">
    <div class="card">
        <div class="card-header">
            Create New Person
        </div>
        <div class="card-body">
            <form action="person/save.do">
                <div class="form-group row">
                    <label for="firstName" class="col-sm-2 col-form-label">First Name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="firstName" name="firstName">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="lastName" class="col-sm-2 col-form-label">Last Name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="lastName" name="lastName">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="nationalId" class="col-sm-2 col-form-label">National ID</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nationalId" name="nationalId">
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-sm-10">
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
