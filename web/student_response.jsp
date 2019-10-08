<%--
  Created by IntelliJ IDEA.
  User: Wolfman
  Date: 07/10/2019
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Response</title>
</head>
<body>
The student is confirmed: ${param.firstName} <!-- shortcut but only for displaying -->
<%= request.getParameter("lastName")%>
<br/>

The student's country: ${param.country}
<br/>
The students favorite language: ${param.favorite_language}
<br/><br/>

Frameworks:
<ul>
    <%
        String[] frmwks = request.getParameterValues("frameworks");
        for(String s : frmwks){
            out.println("<li>" + s + "</li>");
        }
    %>
</ul>


</body>
</html>
