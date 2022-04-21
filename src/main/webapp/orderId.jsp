<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body style="text-align: center">
    <h1>你的订单已生成，订单号为: ${orderId}</h1>
    <h3><a  href="${pageContext.request.contextPath}/order/getOrders">我的订单</a></h3>
<%--    <h3><a style="size: 20px" href="#">去结算</a></h3>--%>
</body>
</html>
