<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body style="text-align: center">
    <h1>你的订单已结算，订单号为: ${orderId}</h1>
    <a style="size: 20px" href="${pageContext.request.contextPath}/order/getOrders">我的订单</a>
    <a style="size: 20px" href="#">去结算</a>
</body>
</html>
