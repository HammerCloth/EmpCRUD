<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2021/7/2
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>员工信息修改</title>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/index_work.css"/>
</head>
<body>

<form action="${pageContext.servletContext.contextPath}/emp" method="post">

    <table>
        <tr>
            <td>
                NAME
            </td>
            <td>
                <input type="text" name="ename">
            </td>
        </tr>
        <tr>
            <td>
                age
            </td>
            <td>
                <input type="text" name="age">
            </td>
        </tr>
        <tr>
            <td>
                sex
            </td>
            <td>
                <input type="radio" name="sex" value="1"> 男
                <input type="radio" name="sex" value="0"> 女
            </td>
        </tr>
        <tr>
            <td>
                department
            </td>
            <%--            <td>--%>
            <%--                <select name="did" >--%>
            <%--                    <c:forEach items="allDept" var="dept">--%>
            <%--                        <option value="${dept.did}">${dept.dname}</option>--%>
            <%--                    </c:forEach>--%>
            <%--                </select>--%>
            <%--            </td>--%>
<%--            <td>--%>
<%--                <c:forEach items="allDept" var="dept">--%>
<%--                    ${dept.dname}--%>
<%--                </c:forEach>--%>
<%--            </td>--%>
<%--        </tr>--%>
        <tr>
            <td>
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>

</form>

</body>
</html>
