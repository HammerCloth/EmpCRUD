<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2021/7/2
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>员工信息查询</title>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/index_work.css"/>
</head>
<body>
    <table>
        <tr>
            <th>EID</th>
            <th>ENAME</th>
            <th>AGE</th>
            <th>SEX</th>
            <th>DEPARTMENTNAME</th>
            <th>options</th>
        </tr>

        <c:forEach items="${empList}" var="emp">
            <tr>
                <td>${emp.eid}</td>
                <td>${emp.ename}</td>
                <td>${emp.age}</td>
                <td>${emp.sex==0?'女':'男'}</td>
                <td>${emp.dept.dname}</td>
                <td>
                    <a href="emp">delete</a>
                    <a href="${pageContext.servletContext.contextPath}/emp/${emp.eid}">update</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
