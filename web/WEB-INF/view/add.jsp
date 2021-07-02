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

<form action="${pageContext.servletContext.contextPath}/emp" method="post">

    <table>
        <tr>
            <td>
                NAME
            </td>
            <td>
                <input type="text" name="ename">
            </td>

            <td>
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>

</form>

</body>
</html>
