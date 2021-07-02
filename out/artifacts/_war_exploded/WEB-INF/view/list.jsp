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
    <script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript">
        $(function (){
            $("#selectALL").click(function (){
                $("[name='eid']").prop("checked",$(this).prop("checked"));
            });
            $("#delete").click(function (){
                $("form").attr("action",$(this).attr("href")).submit();
                return false;
            });
        });
    </script>
</head>
<body>
    <form method="post">
        <input type="hidden" name="_method" value="DELETE">
        <table>
        <tr>
            <th>
                <input type="checkbox" id="selectALL">
            </th>
            <th>EID</th>
            <th>ENAME</th>
            <th>AGE</th>
            <th>SEX</th>
            <th>DEPARTMENTNAME</th>
            <th>options</th>
        </tr>

        <c:forEach items="${empList}" var="emp">
            <tr>
                <td>
                    <input type="checkbox" name="eid" value="${emp.eid}">
                </td>
                <td>${emp.eid}</td>
                <td>${emp.ename}</td>
                <td>${emp.age}</td>
                <td>${emp.sex==0?'女':'男'}</td>
                <td>${emp.dept.dname}</td>
                <td>
                    <a href="${pageContext.servletContext.contextPath}/delemp/${emp.eid}">delete</a>
                    <a href="${pageContext.servletContext.contextPath}/emp/${emp.eid}">update</a>
                </td>
            </tr>
        </c:forEach>
            <tr>
                <td colspan="10">
                    <a id="delete" href="${pageContext.servletContext.contextPath}/emps">批量删除</a>
                    <a href="${pageContext.servletContext.contextPath}/addemp/${emp.eid}">添加员工信息</a>
                </td>
            </tr>
    </table>
    </form>
</body>
</html>
