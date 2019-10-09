<%--
  Created by IntelliJ IDEA.
  User: Wolfman
  Date: 05/10/2019
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Scriptlets</title>
</head>
<body>
<%

    for (int i = 1; i < 6; i++) {
        for (int j = 0; j < 6; j++) {
            out.print("<br/>Hours of coding: " + j);
        }
        out.print("<br/><br/>LevelUp: Level" + i + "<br/>");


    }

%>


</body>
</html>
