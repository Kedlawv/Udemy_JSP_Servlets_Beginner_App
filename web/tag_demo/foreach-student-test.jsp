<%@ page import="kedlaw.tagdemo.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Wolfman
  Date: 09/10/2019
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<Student> data = new ArrayList<>();
    data.add(new Student("John", "Doe", false));
    data.add(new Student("Maxwell", "Johnson", false));
    data.add(new Student("Mary", "Public", true));

    String test = data.get(0).getFirstName();
    pageContext.setAttribute("myStudents", data);

%>
<html>
<head>
    <title>Student test</title>
</head>
<body>

<table>
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Gold Customer if</th>
        <th>Gold Customer choose</th>
    </tr>

    <!--   for(<T> student : myStudents)-->
    <c:forEach var="student" items="${myStudents}">
        <%--    behind the scenes JSP EL (expression language) will call getters for the variables--%>
        <tr>
            <td> ${student.firstName}</td>
            <td>${student.lastName}</td>
            <td>
                <c:if test="${student.goldCustomer}">
                    Special Discount
                </c:if>

                <c:if test="${not student.goldCustomer}">
                    Standard Price
                </c:if>
            </td>
            <td>
                <c:choose>
                    <c:when test="${student.goldCustomer}">
                        Yes
                    </c:when>

                    <c:otherwise>
                        No
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
