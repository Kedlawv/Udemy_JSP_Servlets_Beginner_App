<%@ page import="kedlaw.utils.FunUtils" %><%--
  Created by IntelliJ IDEA.
  User: Wolfman
  Date: 06/10/2019
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>kedlaw.utils.FunUtils Test</title>
</head>
<body>
<h2>A call to a method in the external Java class:</h2>
<br/>
String variable is : "FROM THE OTHER SIDE"
<br/>
<%! String data = "FROM THE OTHER SIDE"; %>

Fully qualified name call <= kedlaw.utils.FunUtils.makeItLower(data) >
<br/>
Result: <%= kedlaw.utils.FunUtils.makeItLower(data)%>
<br/><br/>

A call with an import of the class : <@ page import="kedlaw.utils.FunUtils" > <= FunUtils.makeItLower(data)>
<br/>
Result: <%= FunUtils.makeItLower(data)%>




</body>
</html>
