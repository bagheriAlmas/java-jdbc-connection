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
  <ul>
  <c:forEach items="${requestScope.personList}" var="person">
    <li>id: ${person.id}</li>
    <li>first name: ${person.firstName}</li>
    <li>last name: ${person.lastName}</li>
    <li>national id: ${person.nationalId}</li>
    <input type="button" value="Select" onclick="personDetail(${person.id})"/>
  </c:forEach>
  </ul>
  <script>
    function personDetail(id){
      window.location = "/person/find.do?id=" + id;
    }
  </script>
  </body>
</html>
