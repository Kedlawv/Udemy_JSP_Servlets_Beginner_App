<%--
  Created by IntelliJ IDEA.
  User: Wolfman
  Date: 19/10/2019
  Time: 00:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>View Students</title>
</head>
<body>

<c:forEach var="student" items="${student_list}">
    ${student} <br/>
</c:forEach>

</body>
</html>
