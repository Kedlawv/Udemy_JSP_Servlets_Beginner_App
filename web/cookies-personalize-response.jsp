<%--
  Created by IntelliJ IDEA.
  User: Wolfman
  Date: 08/10/2019
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Personalization confirmation</title>
</head>
<body>

<%
    String favLang = request.getParameter("favorite_language");

    Cookie favLangCookie = new Cookie("myApp.favorite_language",favLang);
    //by default lifespan of a cookie is 0 | setMaxAge takes amount of seconds
    favLangCookie.setMaxAge(60*60*24*365);

    response.addCookie(favLangCookie);
    // we send the newly created Cookie to the browser by adding it to the Response

%>
Your favorite language has been set to: <%=favLang%>
<br/>
<a href="cookies-homepage.jsp">Go back to homepage.</a>

</body>
</html>
