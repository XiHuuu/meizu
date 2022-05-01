<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/Alipay" method="post">
        <input type="hidden" name="order_id" value="${order_id}">
        商户订单号:<input type="text" name="order_number"><br>
        付款金额:<input type="text" name="money"><br>
        订单名称:<input type="text" name="order_name"><br>
        商品描述:<input type="text" name="describe"><br>
        <input type="submit" value="支付">
    </form>
</body>
</html>
