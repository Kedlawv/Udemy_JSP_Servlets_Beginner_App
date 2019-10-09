<%--
  Created by IntelliJ IDEA.
  User: Wolfman
  Date: 05/10/2019
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Expressions</title>
</head>
<body>
Converting a string to upper case | HelloWorld is --> <%=new String("Hello World").toUpperCase()%>
&emsp; Literal JSP code with '%' omitted <strong><= new String("Hello World").toUpperCase() > </strong>

<br/><br/>

Mathematical operations:
25 * 4 = <%=25*4%> &emsp;  <strong><= 25*4 ></strong>

<br/><br/>

Boolean expression:
Is 75 less than 69 ? <%= 75 < 69%> &emsp; <strong><= 75 < 69 ></strong>

</body>
</html>
