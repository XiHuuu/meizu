<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <% String path = request.getContextPath();%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
    <title>Title</title>
</head>
<body>
    <a href="${pageContext.request.contextPath}/phone/toAdd">添加</a>
    <table class="table">
        <tr>
            <td>ID</td>
            <td>名字</td>
            <td>价格</td>
            <td>图片</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${list}" var="phone">
        <tr>
            <td>${phone.id}</td>
            <td>${phone.name}</td>
            <td>${phone.price}</td>
            <td><img style="width: 100px;height: 150px" src="<%=path%>/img/img4/${phone.img}"></td>
            <td><a href="${pageContext.request.contextPath}/phone/toUpdate?id=${phone.id}">修改</a>&nbsp;&nbsp;&nbsp;
                <a href="${pageContext.request.contextPath}/phone/delete?id=${phone.id}">删除</a></td>
        </tr>
        </c:forEach>
    </table>
</body>
</html>
