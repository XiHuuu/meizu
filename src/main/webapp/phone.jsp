<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <% String path = request.getContextPath();%>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>手机 - 魅族官网</title>
    <link rel="shortcut icon" href="<%=path%>/img/img4/biaotu.ico" type="image/x-icon">
    <link rel="stylesheet" href="<%=path%>/css3/index.css">
    <link rel="stylesheet" href="<%=path%>/css3/bootstrap.css">
    <link rel="stylesheet" href="<%=path%>/css/index3-1.css">
    <script src="<%=path%>/js/jquery-1.10.1.min.js"></script>
    <script type="text/javaScript">
        // 声明创建的jquery的匿名函数,执行到浏览器窗口,会自动加载当前函数
        $(function() {//function=函数
            // load("具体加载的内容"):加载
            <%--$(".top").load("<%=path%>/header.jsp");--%>
            $(".tops").load("<%=path%>/meizu-footer.jsp");
        })
    </script>
</head>
<body>

<%--    <div class="top"></div>--%>
    <nav>
        <div class="container-fluid div3-1">
            <!-- logo -->
            <div class="div3-2">
                <a href="${pageContext.request.contextPath}/phone/getPhones?url=index">
                    <img src="<%=path%>/img/img4/index.png" alt="" style="height: 24px;" >
                </a>
            </div>
            <ul>
                <li class="li3-1">
                    <!--target=_blank用一个新网页打开超链接  -->
                    <a href="${pageContext.request.contextPath}/phone/getPhones?url=phone" target=_blank >手机</a>
                    <!-- 下拉栏 -->
                    <div class="xia">
                        <div class="container-fluid">
                            <ul style="text-align: center;">
                                <c:forEach items="${list}" var="phone">
                                    <li class="li3-2">
                                        <a href="${pageContext.request.contextPath}/phone/getPhoneById?id=${phone.id}">
                                            <img src="<%=path%>/img/img4/${phone.img}" alt="">
                                            <p>${phone.name}</p>
                                            <p>￥${phone.price}</p>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </li>
                <li  class="li3-1">
                    <a href="<%=path%>/lipro.jsp" target=_blank>Lipro</a>
                    <!-- 下拉栏 -->
                    <div class="xia">
                        <div class="container-fluid">
                            <ul style="text-align: center;">
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/liproxia1.jpg" alt="">
                                        <p>魅族 Lipro LED 灯泡</p>
                                        <p>￥44.1</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/liproxia2.png" alt="">
                                        <p>【新品】Lipro LED 射灯</p>
                                        <p>￥299</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/liproxia3.png" alt="">
                                        <p>【新品】Lipro LED 射灯</p>
                                        <p>￥129</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/liproxia4.png" alt="">
                                        <p>【新品】Lipro LED 智...</p>
                                        <p>￥499</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/liproxia5.png" alt="">
                                        <p>魅族 Lipro LED 简灯</p>
                                        <p>￥99</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/liproxia6.png" alt="">
                                        <p>Lipro 可控硅...</p>
                                        <p>￥199</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/liproxia7.png" alt="">
                                        <p>Lipro 智能蓝牙控制器</p>
                                        <p>￥89 起</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/liproxia8.png" alt="">
                                        <p>【无线版】魅族 Lipro L...</p>
                                        <p>￥4299</p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </li >
                <li  class="li3-1">
                    <a href="<%=path%>/acoustics.jsp" target=_blank>声学</a>
                    <!-- 下拉栏 -->
                    <div class="xia">
                        <div class="container-fluid">
                            <ul style="text-align: center;">
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia1.png" alt="">
                                        <p>【新品】魅族 POP Pro...</p>
                                        <p>￥439</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia2.png" alt="">
                                        <p>魅族 POP2s 真无线耳机</p>
                                        <p>￥219</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia3.png" alt="">
                                        <p>魅族 HD60 降噪耳机</p>
                                        <p>￥799</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia4.png" alt="">
                                        <p>魅族 HD60 头戴式蓝牙...</p>
                                        <p>￥319</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia5.png" alt="">
                                        <p>魅族 HIFI 解码耳放</p>
                                        <p>￥129</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia6.png" alt="">
                                        <p>魅族 EP3C 耳机</p>
                                        <p>￥129</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia7.png" alt="">
                                        <p>MEIZU UR LIVE 特调版</p>
                                        <p>￥1299</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia8.png" alt="">
                                        <p>MEIZU UR 高端定制耳...</p>
                                        <p>￥200</p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li  class="li3-1">
                    <a href="<%=path%>/peijian.jsp" target=_blank>配件</a>
                    <!-- 下拉栏 -->
                    <div class="xia">
                        <div class="container-fluid">
                            <ul style="text-align: center;">
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia1.png" alt="">
                                        <p>【新品】魅族 POP Pro...</p>
                                        <p>￥439</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia2.png" alt="">
                                        <p>魅族 POP2s 真无线耳机</p>
                                        <p>￥219</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia3.png" alt="">
                                        <p>魅族 HD60 降噪耳机</p>
                                        <p>￥799</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia4.png" alt="">
                                        <p>魅族 HD60 头戴式蓝牙...</p>
                                        <p>￥319</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia5.png" alt="">
                                        <p>魅族 HIFI 解码耳放</p>
                                        <p>￥129</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia6.png" alt="">
                                        <p>魅族 EP3C 耳机</p>
                                        <p>￥129</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia7.png" alt="">
                                        <p>MEIZU UR LIVE 特调版</p>
                                        <p>￥1299</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shengxuexia8.png" alt="">
                                        <p>MEIZU UR 高端定制耳...</p>
                                        <p>￥200</p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li  class="li3-1">
                    <a href="<%=path%>/shenghuo.jsp" target=_blank>生活</a>
                    <!-- 下拉栏 -->
                    <div class="xia">
                        <div class="container-fluid">
                            <ul style="text-align: center;">
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shenghuoxia1.png" alt="">
                                        <p>【新品】FLYME 九周年...</p>
                                        <p>￥129</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shenghuoxia2.png" alt="">
                                        <p>PANDAER 「龍」T恤</p>
                                        <p>￥129</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shenghuoxia3.png" alt="">
                                        <p>PANDAER 「龍」T恤</p>
                                        <p>￥129</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shenghuoxia4.png" alt="">
                                        <p>PANDAER 18 系列T恤</p>
                                        <p>￥129</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shenghuoxia5.png" alt="">
                                        <p>魅族 City Walk 双肩包</p>
                                        <p>￥139</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shenghuoxia6.png" alt="">
                                        <p>魅族防飞溅声波电动牙刷</p>
                                        <p>￥239</p>
                                    </a>
                                </li>
                                <li class="li3-2">
                                    <a href="">
                                        <img src="<%=path%>/img/img4/shenghuoxia7.png" alt="">
                                        <p>魅族声波电动牙刷刷头</p>
                                        <p>￥59</p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li  class="li3-1">
                    <a href="<%=path%>/Flyme.jsp" target=_blank>Flyme</a>
                </li>
                <li  class="li3-1">
                    <a href="<%=path%>/fuwu.jsp" target=_blank>服务</a>
                </li>
                <li  class="li3-1">
                    <a href="<%=path%>/zhuanmaidian.jsp" target=_blank>专卖店</a>
                </li>
                <li  class="li3-1">
                    <a href="<%=path%>/shequ.jsp" target=_blank>社区</a>
                </li>
                <li  class="li3-1">
                    <a href="<%=path%>/qiyefuwu.jsp" target=_blank>企业服务</a>
                </li>
                <li  class="li3-1">
                    <a href="">App下载</a>
                    <!-- 下拉栏 -->
                    <div class="xia-2">
                        <div class="container-fluid">
                            <img src="<%=path%>/img/img4/20dbe12b-c97c-4556-ac76-bce1d6457a6a.jpg" alt="" style="height: 350px; ">
                        </div>
                    </div>
                </li>
            </ul>
            <!-- 搜索框 -->
            <form class="navbar-form navbar-left" style="margin-top: 20px;" >
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="魅族 18">
                </div>
                <button type="submit" class="btn btn-default" style="position: relative;left: -10px;border-left: none; height: 34px;"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
            </form>
            <!-- 右侧购物车，登录 -->
            <div class="navbar-header div3-4" style="margin-top: 13px;">
                <a class="navbar-brand login3-1" href="#">
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                    <!-- 下拉栏 -->
                    <div class="xia-3">
                        <c:if test="${user != null}"><a href="${pageContext.request.contextPath}/user/exit">用户名:${user.username} 注销</a></c:if>
                        <c:if test="${user == null}"><a href="<%=path%>/login.jsp" >立即登录</a></c:if>
                        <a href="<%=path%>/register.jsp" target=_blank>立即注册</a>
                        <a href="${pageContext.request.contextPath}/order/getOrders" target=_blank>我的订单</a>
                        <a href="${pageContext.request.contextPath}/phone/manage"  style="padding-left: 30px;">手机管理</a>
                    </div>
                </a>
            </div>
            <div class="navbar-header div3-4" style="margin-top: 13px;">
                <a class="navbar-brand login3-1" href="<c:if test="${user != null}"><%=path%>/cart.jsp</c:if>  <c:if test="${user == null}"><%=path%>/login.jsp</c:if>">
                    <span class="glyphicon glyphicon-shopping-cart " aria-hidden="true"></span>
                    <!-- 下拉栏 -->
                    <div class="xia-4">
                        <c:if test="${user == null}">
                            <span class="span3-8" >登录后可显示</span>
                        </c:if>
                        <c:if test="${user != null}">
                            <span class="span3-8">您账号中已加入的商品哦~</span>
                        </c:if>
                    </div>
                </a>
            </div>
        </div>
    </nav>
<!-- 手机页banner -->
        <div class="brand-banner">
            <a href="#" >
                <img src="<%=path%>/img3/phone/banner.jpg" width="100%" >
            </a>
        </div>
<!-- main-page -->
        <div class="wrapper page-search" style="background-color: #F4F4F4;padding-bottom: 30px;">
            <div class="container" style="width: 1300px;">
                <h1 class="title">
                    <span>手机</span>
                    <!-- 右下角title -->
                    <div class="title-right">
                        <a href="#" >价格 
                        <img src="<%=path%>/img3/phone/arrow-up-down-line.png" style="width: 10px;height: 20px;float: right;">
                        </a>
                        <a href="#">新品</a>
                        <a href="#" style="color: #008cff;">推荐 </a>
                    </div>
                </h1>
        <!-- 商品列表 -->
                <ul class="goodslist" style="list-style:none;padding-top: 30px;padding-left: 0px;">
                    <c:forEach items="${list}" var="phone">
                    <li class="items">
                        <a href="${pageContext.request.contextPath}/phone/getPhoneById?id=${phone.id}" class="items-link">
                            <img src="<%=path%>/img/img4/${phone.img}" >
                        <h3 class="items-title">${phone.name}</h3>
                        <p class="items-info">【限时领券至高立省700 | 12期免息】</p>
                        <p class="items-price">￥${phone.price}</p>
                        </a>
                    </li>
                    </c:forEach>
                </ul>
            </div>
        <!-- 手机对比middle -->
            <div class="container" >
                <div class="middle">
                    <a href="#" >
                        <img src="<%=path%>/img3/phone/sjmiddle.jpg" >
                    </a>
                </div>
             </div>  
            <!-- 为你推荐title -->
            <div class="container" style="width: 1300px;">
            <h2 class="middle-title">为你推荐</h2>
            <div class="down">
                <ul>
                    <li class="down-items">
                        <a href="#" >
                            <img src="<%=path%>/img3/phone/sj011.jpg" >
                            <h3 class="items-title">魅族 18</h3>
                            <p class="items-price">￥3999</p>
                        </a>
                    </li>
                    <li class="down-items">
                        <a href="#" >
                            <img src="<%=path%>/img3/phone/sj012.jpg" >
                            <h3 class="items-title">魅族 18 Pro</h3>
                            <p class="items-price">￥3999</p>
                        </a>
                    </li>
                    <li class="down-items">
                        <a href="#" >
                            <img src="<%=path%>/img3/phone/sj013.jpg" >
                            <h3 class="items-title">魅族 17</h3>
                            <p class="items-price">￥3699</p>
                        </a>
                    </li>
                    <li class="down-items">
                        <a href="#" >
                            <img src="<%=path%>/img3/phone/sj014.jpg" >
                            <h3 class="items-title">魅族 18 Pro</h3>
                            <p class="items-price">￥4299</p>
                        </a>
                    </li>
                </ul>
            </div>
            </div>

<!-- 这个是main-page的div -->
        </div>
        <div class="tops"></div>
    <script src="<%=path%>/js3/jquery-1.12.3.min.js"></script>
    <script src="<%=path%>/js3/bootstrap.min.js"></script>
</body>
</html>