<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2021/7/2
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>删除员工信息</title>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/index_work.css"/>
</head>
<body>
    <form:form action="${pageContext.servletContext.contextPath}/emp" method="post" modelAttribute="emp">
    <form:hidden path="eid"/>
    <input type="hidden" name="_method" value="DELETE">
    <table>
        <tr>
            <th colspan="2">删除员工信息</th>
        </tr>
        <tr>
            <td>ENAME</td>
            <td>
                <form:input path="ename"/>
            </td>
        </tr>
        <tr>
            <td>AGE</td>
            <td>
                <form:input path="age"/>
            </td>
        </tr>
        <tr>
            <td>SEX</td>
            <td>
                <form:radiobuttons path="sex" items="${sex}"/>
            </td>
        </tr>
        <tr>
            <td>DEPTMENT</td>
            <td>
                <from:input path="dept.dname"/>
            </td>
        </tr>
        <tr>
            <th colspan="2">
                <input type="submit" value="确认删除"/>
            </th>
        </tr>
    </table>
</form:form>

</body>
</html>
