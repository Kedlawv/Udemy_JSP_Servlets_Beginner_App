<%--
  Created by IntelliJ IDEA.
  User: Wolfman
  Date: 09/10/2019
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>for-each test</title>
</head>
<body>

<%
    String[] cities = {"Warszawa","Poznan","Rzeszow"};

    pageContext.setAttribute("myCities",cities);
%>

<c:forEach var = "loopItem" items="${myCities}">
    ${loopItem} <br/>
</c:forEach>


</body>
</html>
