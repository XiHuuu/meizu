<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <% String path = request.getContextPath();%>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/phone/add" enctype="multipart/form-data" method="post">
<%--    <input type="hidden" name="id" value="${phone.id}">--%>
    手机名: <input type="text" name="name"><br>
    价格: <input type="number" name="price"><br>
    图片: <input type="file" name="uploadFile"><br>
    <input type="submit" value="添加">
</form>
</body>
</html>
