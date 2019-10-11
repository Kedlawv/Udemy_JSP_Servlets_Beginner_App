<%--
  Created by IntelliJ IDEA.
  User: Wolfman
  Date: 11/10/2019
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="theLocale"
       value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}"
            scope="session" />
<fmt:setLocale value="${theLocale}"/>
<fmt:setBundle basename="kedlaw.tagdemo.i18n.resources.mylabels"/>

<html>
<head>
    <title>i18n Messages </title>
</head>
<body>

<a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>
<a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a>
<a href="i18n-messages-test.jsp?theLocale=de_DE">German (DE)</a>
<br/><hr/>

<fmt:message key="label.greeting"/> <br/><br/>

<fmt:message key="label.firstName"/> <i>John</i><br/>
<fmt:message key="label.lastName"/> <i>Doe</i><br/><br/>

<fmt:message key="label.welcome"/> <br/>
<hr/>
Selected locale: ${theLocale}


</body>
</html>
