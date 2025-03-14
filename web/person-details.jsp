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
    <title>$Title$</title>
</head>
<body>
<form action="/person/update.do">
    <label for="id"> ID: </label>
    <input type="text" id="id" name="id" readonly value="${requestScope.person.id}">

    <label for="firstName"> First Name: </label>
    <input type="text" id="firstName" name="firstName" value="${requestScope.person.firstName}">

    <label for="lastName"> Last Name: </label>
    <input type="text" id="lastName" name="lastName" value="${requestScope.person.lastName}">

    <label for="nationalId"> National Id: </label>
    <input type="text" id="nationalId" name="nationalId" value="${requestScope.person.nationalId}">

    <input type="submit" value="Update">
    <input type="button" value="Delete" onclick="deletePerson(${requestScope.person.id})">
</form>
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
