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
    <title>Person List</title>
    <jsp:include page="WEB-INF/head.jsp"/>
</head>
<body>
<jsp:include page="WEB-INF/navbar.jsp"/>

<table class="table table-hover table-bordered border-dark">
    <thead class="thead-dark">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">FIRST NAME</th>
        <th scope="col">LAST NAME</th>
        <th scope="col">NATIONAL ID</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${requestScope.personList}" var="person">
        <tr onclick="personDetail(${person.id})" style="cursor: pointer">
            <th scope="row">${person.id}</th>
            <td>${person.firstName}</td>
            <td>${person.lastName}</td>
            <td>${person.nationalId}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<script>
    function personDetail(id) {
        window.location = "/person/find.do?id=" + id;
    }
</script>
</body>
</html>
