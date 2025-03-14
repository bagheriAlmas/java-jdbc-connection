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
<form action="person/save.do">
    <label for="firstName"> First Name: </label>
    <input type="text" id="firstName" name="firstName">

    <label for="lastName"> Last Name: </label>
    <input type="text" id="lastName" name="lastName">

    <label for="nationalId"> National Id: </label>
    <input type="text" id="nationalId" name="nationalId">

    <input type="submit" value="Save">
</form>
</body>
</html>
