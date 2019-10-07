<%--
  Created by IntelliJ IDEA.
  User: Wolfman
  Date: 07/10/2019
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Builtin objects</title>
</head>
<body>
<h2>JSP Built-in Objects</h2>
Request user agent: <%= request.getHeader("User-Agent")%>
<br/><br/>

Request Language:  <%= request.getLocale()%>

</body>
</html>
