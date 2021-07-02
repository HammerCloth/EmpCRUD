<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2021/7/2
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>员工信息修改</title>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/index_work.css"/>
</head>
<body>

    <form:form action="${pageContext.servletContext.contextPath}/emp" method="post" modelAttribute="emp">
        <form:hidden path="eid"/>
        <table>
            <tr>
                <th colspan="2">修改员工信息</th>
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
                    <form:select path="dept.did" items="${allDept}" itemLabel="dname" itemValue="did"></form:select>
                </td>
            </tr>
            <tr>
                <th colspan="2">
                    <input type="submit" vlue="修改"/>
                </th>
            </tr>
        </table>
    </form:form>

</body>
</html>
