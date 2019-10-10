<%--
  Created by IntelliJ IDEA.
  User: Wolfman
  Date: 10/10/2019
  Time: 18:26
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Function test</title>
</head>
<body>

<c:set var="data" value="Perserverence" />
Length of the string <strong>${data}</strong> is: ${fn:length(data)}
<br/><br/>
Uppercase version of the string <strong>${data}</strong> is: ${fn:toUpperCase(data)}
<br/><br/>
Dose the string <strong>${data}</strong> start with <strong>P</strong> ? : ${fn:startsWith(data, "P")}

</body>
</html>
