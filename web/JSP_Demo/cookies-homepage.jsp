<%--
  Created by IntelliJ IDEA.
  User: Wolfman
  Date: 08/10/2019
  Time: 17:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookies Homepage</title>
</head>
<body>

<%
    String favLang = "Java";
    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("myApp.favorite_language")) {
                favLang = cookie.getValue();
                break;
            }
        }
    }
%>

<h4>New Books for <%= favLang %></h4>
bla bla bla
<br/><br/>

<h4>Latest news reports for <%= favLang %></h4>
bla bla bla
<br/><br/>

<a href="cookies-personalize-form.html">Personalize the page</a>

</body>
</html>
