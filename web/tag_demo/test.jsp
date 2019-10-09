<%--
  Created by IntelliJ IDEA.
  User: Wolfman
  Date: 09/10/2019
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSTL Tag test</title>
</head>
<body>

<c:set var="stuff" value="<%= new java.util.Date() %>"/>

Time on the server is <strong>date: ${stuff} <--</strong>


</body>
</html>
