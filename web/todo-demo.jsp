<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Wolfman
  Date: 08/10/2019
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Todo demo</title>
</head>
<body>

<form action="todo-demo.jsp"> <!-- submits to itself -->
    Add new item: <input type="text" name="theItem"/>
    <input type="submit" value="Submit"/>
</form>

<%
    List<String> items = (List<String>) session.getAttribute("myToDoList");
    if (items == null) {
        items = new ArrayList<String>();
        session.setAttribute("myToDoList", items);
    }

    String theItem = request.getParameter("theItem");
    if(theItem != null){
        items.add(theItem);
    }
%>

<hr>
ToDo List:
<ol>
    <%
        for(String item : items){
            out.println("<li>" + item + "</li>");
        }
    %>
</ol>

</body>
</html>
