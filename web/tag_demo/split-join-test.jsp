<%--
  Created by IntelliJ IDEA.
  User: Wolfman
  Date: 10/10/2019
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Split Join</title>
</head>
<body>
<c:set var="data" value="Singapore,Tokyo,Mumbai,London"/>

<h2>Split Demo</h2>
<c:set var="citiesArray" value="${fn:split(data,',')}"/>
<c:forEach var="iCity" items="${citiesArray}">
    ${iCity} <br/>
</c:forEach>
<hr>

<h2>Join Demo</h2>

<c:set var="joinedCities" value="${fn:join(citiesArray, '*')}"/>

Result of joining : ${joinedCities}





</body>
</html>
