<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <% String path = request.getContextPath();%>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>魅族官网-魅族 18 系列手机：独具热爱，自成一派</title>
    <link rel="shortcut icon" href="<%=path%>/img/img4/biaotu.ico" type="image/x-icon">
    <link rel="stylesheet" href="<%=path%>/css/bootstrap.css">
    <link rel="stylesheet" href="<%=path%>/css/index3.css">
    <script src="<%=path%>/js/jquery-1.10.1.min.js"></script>
</head>
<body>
<script type="text/javaScript">
    // 声明创建的jquery的匿名函数,执行到浏览器窗口,会自动加载当前函数
    $(function() {//function=函数
        // load("具体加载的内容"):加载
        $(".tops").load("<%=path%>/meizu-footer.jsp");
    })
</script>

<!-- 导航栏外部容器 -->
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
                <a href="${pageContext.request.contextPath}/phone/getPhones?url=phone">手机</a>
                <!-- 下拉栏 -->
                <div class="xia">
                    <div class="container-fluid">
                        <ul style="text-align: center;">
                            <c:forEach items="${list}" var="phone">
                            <li class="li3-2">
                                <a href="${pageContext.request.contextPath}/phone/getPhoneById?id=${phone.id}">
                                    <img src="<%=path%>/img/img4/${phone.img}.png" alt="">
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
                <a href="<%=path%>/lipro.jsp" >Lipro</a>
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
                <a href="<%=path%>/acoustics.jsp" >声学</a>
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
                <a href="<%=path%>/peijian.jsp" >配件</a>
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
                <a href="<%=path%>/shenghuo.jsp" >生活</a>
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
                <a href="<%=path%>/Flyme.jsp" >Flyme</a>
            </li>
            <li  class="li3-1">
                <a href="<%=path%>/fuwu.jsp" >服务</a>
            </li>
            <li  class="li3-1">
                <a href="<%=path%>/zhuanmaidian.jsp" >专卖店</a>
            </li>
            <li  class="li3-1">
                <a href="<%=path%>/shequ.jsp" >社区</a>
            </li>
            <li  class="li3-1">
                <a href="<%=path%>/qiyefuwu.jsp" >企业服务</a>
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
                    <a href="<%=path%>/login.jsp" >立即登录</a>
                    <a href="<%=path%>/register.jsp" >立即注册</a>
                    <a href="" >我的订单</a>
                    <a href="<%=path%>/mma.jsp"  style="padding-left: 30px;">M码通道</a>
                </div>
            </a>
        </div>
        <div class="navbar-header div3-4" style="margin-top: 13px;">
            <a class="navbar-brand login3-1" href="#">
                <span class="glyphicon glyphicon-shopping-cart " aria-hidden="true"></span>
                <!-- 下拉栏 -->
                <div class="xia-4">
                    <span class="span3-8" >登录后可显示</span>
                    <span class="span3-8">您账号中已加入的商品哦~</span>
                </div>
            </a>

        </div>
    </div>
</nav>
<!-- 轮播图 -->
<div id="carousel-example-generic" class="carousel slide div3-3" data-ride="carousel" >
    <!-- 轮播逻辑 -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
        <li data-target="#carousel-example-generic" data-slide-to="5"></li>
        <li data-target="#carousel-example-generic" data-slide-to="6"></li>
        <li data-target="#carousel-example-generic" data-slide-to="7"></li>
    </ol>

    <!-- 插入图片 -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="<%=path%>/img/img4/download.jpg" alt="图片加载失败">
        </div>
        <div class="item">
            <img src="<%=path%>/img/img4/lunbo1.jfif" alt="图片加载失败">
        </div>
        <div class="item">
            <img src="<%=path%>/img/img4/lunbo2.jfif" alt="图片加载失败">
        </div>
        <div class="item">
            <img src="<%=path%>/img/img4/lunbo3.jfif" alt="图片加载失败">
        </div>
        <div class="item">
            <img src="<%=path%>/img/img4/lunbo4.jfif" alt="图片加载失败">
        </div>
        <div class="item">
            <img src="<%=path%>/img/img4/lunbo5.jfif" alt="图片加载失败">
        </div>
        <div class="item">
            <img src="<%=path%>/img/img4/lunbo6.jfif" alt="图片加载失败">
        </div>
        <div class="item">
            <img src="<%=path%>/img/img4/lunbo7.jfif" alt="图片加载失败">
        </div>
    </div>
</div>

<div class="container">
    <div class="row div3-5">
        <div class="col-md-3">
            <a href="">
                <img src="<%=path%>/img/img4/Z1.png" alt="">
                <h4>魅友家11周年庆</h4>
                <p>感恩回馈</p>
            </a>
        </div>
        <div class="col-md-3" >
            <a href="">
                <img src="<%=path%>/img/img4/Z2.png" alt="">
                <h4>魅族 18</h4>
                <p>立省800+12期免息</p>
            </a>
        </div>
        <div class="col-md-3">
            <a href="">
                <img src="<%=path%>/img/img4/Z3.png" alt="">
                <h4>魅族 18 Pro</h4>
                <p>立省700+12期免息</p>
            </a>
        </div>
        <div class="col-md-3 ">
            <a href="">
                <img src="<%=path%>/img/img4/Z4.png" alt="">
                <h4>mCycle</h4>
                <p>以旧换新</p>
            </a>
        </div>
    </div>
</div>
<!-- 手机分类 -->
<div class="container-fluid div3-6">
    <h3 style="line-height: 80px;">手机</h3>
</div>
<div class="container-fluid">
    <img src="<%=path%>/img/img4/meizu18.png" alt="" width="100%" >
</div>
<div class="container-fluid" style="background-color: rgb(244, 244, 244);">
    <div class="container">
        <div class="row div3-7">
            <div class="col-md-6" >
                <a href="" >
                    <h3 style="padding-top:10px;">魅族 18</h3>
                    <span class="span3-1">限时领劵至高立省800 | 12期免息</span>
                    <span class="span3-2">￥3999</span>
                    <img src="<%=path%>/img/img4/xiazaimeizu18.png" alt="" width="460px">
                </a>
            </div>
            <div class="col-md-6">
                <a href="" >
                    <h3 style="padding-top:10px;">魅族 18</h3>
                    <span class="span3-1">限时领劵至高立省800 | 12期免息</span>
                    <span class="span3-2">￥3999</span>
                    <img src="<%=path%>/img/img4/xiazaimeizu18.png" alt="" width="460px">
                </a>
            </div>
        </div>
        <div class="row div3-7">
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/xiaolong865.png" alt="" width="230px" >
                    <span class="span3-1">魅族 17「AG梦幻独角兽」</span>
                    <span class="span3-3">高通骁龙 865 | 120 Hz尝鲜模式</span>
                    <span class="span3-2">￥3699</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/songshengrumo.png" alt="" width="230px" >
                    <span class="span3-1">魅族 17「松深入墨」</span>
                    <span class="span3-3">高通骁龙 865 | 120 Hz尝鲜模式</span>
                    <span class="span3-2">￥3699</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/dinbai.png" alt="" width="230px" >
                    <span class="span3-1">魅族 17「定白」</span>
                    <span class="span3-3">限时领劵立省1200+12期免息</span>
                    <span class="span3-2">￥4299</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/wujin.png" alt="" width="230px" >
                    <span class="span3-1">魅族 17「乌金」</span>
                    <span class="span3-3">限时领劵立省1200+12期免息</span>
                    <span class="span3-2">￥4299</span>
                </a>
            </div>
        </div>
    </div>

</div>
<!-- 智能配件 -->
<div class="container-fluid div3-6">
    <h3 style="line-height: 80px;">智能配件</h3>
</div>
<div class="container-fluid">
    <img src="<%=path%>/img/img4/meizushoubiao.png" alt="" width="100%" >
</div>
<div class="container-fluid" style="background-color: rgb(244, 244, 244);">
    <div class="container">
        <div class="row div3-7">
            <div class="col-md-3">
                <a href="" style="background-image: url(<%=path%>/img/img4/chongdianbao.png);background-size: 100%; height: 296px;" >
                    <span class="span3-6">魅族超级充 USB-C 移动电源</span>
                    <span class="span3-5">【满200减20】USB-C双向快充|22.5W大功率</span>
                    <span class="span3-4">￥169</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/quanzhinengshoubiao.png" alt="" width="230px" >
                    <span class="span3-1">魅族全智能手表</span>
                    <span class="span3-3">Fly for Watch系统|骁龙Wear4100旗舰芯片</span>
                    <span class="span3-2">￥1499</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/baohuke.png" alt="" width="230px" >
                    <span class="span3-1">PANDAER 侠意保护壳</span>
                    <span class="span3-3">【满178减50】半透明材质 磨砂清爽手感</span>
                    <span class="span3-2">￥69</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/xiaribaohuke.png" alt="" width="230px" >
                    <span class="span3-1">魅族18系列PANDAER夏日特饮保护壳</span>
                    <span class="span3-3">【满200减20】半透果冻设计</span>
                    <span class="span3-2">￥69 <del style="color: rgb(102, 102, 102); font-size: 16px;" >￥89</del></span>
                </a>
            </div>
        </div>
        <div class="row div3-7">
            <div class="col-md-3">
                <a href="" style="background-image: url(<%=path%>/img/img4/wuxianchong.png);background-size: 100%; height: 296px;" >
                    <span class="span3-6">魅族立式无线超级充</span>
                    <span class="span3-5">【满200减20】40W无线快充 双重线圈 横竖无忧</span>
                    <span class="span3-4">￥199</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/chongdiantou.png" alt="" width="230px" >
                    <span class="span3-1">魅族超级充适配器 45W</span>
                    <span class="span3-3">【满200减20】适配 18 系列 智能兼容</span>
                    <span class="span3-2">￥99</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/moshake.png" alt="" width="230px" >
                    <span class="span3-1">魅族18系列 PANDAER PC磨砂壳</span>
                    <span class="span3-3">【满2件减50】赠手机膜 磨砂防指纹</span>
                    <span class="span3-2">￥89</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/baohumo.png" alt="" width="230px" >
                    <span class="span3-1">魅族 18 系列手机保护膜</span>
                    <span class="span3-3">【满200减20|限时特惠39元】</span>
                    <span class="span3-2">￥39<del style="color: rgb(102, 102, 102); font-size: 16px;" >￥49</del></span>
                </a>
            </div>
        </div>
        <div class="row div3-7">
            <div class="col-md-3">
                <a href="" style="background-image: url(<%=path%>/img/img4/guijiaoke.png);background-size: 100%; height: 296px;" >
                    <span class="span3-6">魅族 18 液态硅胶壳</span>
                    <span class="span3-5">【满2件减50|买3件减80】附赠定制水凝膜</span>
                    <span class="span3-4">￥89</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/dianduke.png" alt="" width="230px" >
                    <span class="span3-1">魅族 18 系列PC电镀壳</span>
                    <span class="span3-3">【满2件减20|限时特惠49元】</span>
                    <span class="span3-2">￥49<del style="color: rgb(102, 102, 102); font-size: 16px;" >￥69</del></span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/lvseguijiaoke.png" alt="" width="230px" >
                    <span class="span3-1">魅族 18 Pro 液态硅胶壳</span>
                    <span class="span3-3">【满2件减50|买3件减80】附赠定制水凝膜</span>
                    <span class="span3-2">￥4299</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/USBxian.png" alt="" width="230px" >
                    <span class="span3-1">魅族双 USB-C 快充线</span>
                    <span class="span3-3">双USB-C接口|5A大电流</span>
                    <span class="span3-2">￥39<del style="color: rgb(102, 102, 102); font-size: 16px;" >￥49</del></span>
                </a>
            </div>
        </div>
        <div class="row div3-7">
            <div class="col-md-3">
                <a href="" style="background-image: url(<%=path%>/img/img4/guiijaokemanhe.png);background-size: 100%; height: 296px;" >
                    <span class="span3-6">魅族 18 Pro 液态硅胶壳盲盒</span>
                    <span class="span3-5">【满2件减50|买3件减80】附赠定制水凝膜</span>
                    <span class="span3-4">￥89</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/Type-cxian.png" alt="" width="230px" >
                    <span class="span3-1">魅族 Type-C 游戏专用线</span>
                    <span class="span3-3">【满200减20】Type-C接口|5A大电流</span>
                    <span class="span3-2">￥49</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/type-cbaixian.png" alt="" width="230px" >
                    <span class="span3-1">魅族 Type-C数据线</span>
                    <span class="span3-3">【满200减20】5A大电流|Type-C接口</span>
                    <span class="span3-2">￥49</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/kuaichongxian.png" alt="" width="230px" >
                    <span class="span3-1">Lifeme PD 快充线</span>
                    <span class="span3-3">【满200减20|限时特惠49元】</span>
                    <span class="span3-2">￥49<del style="color: rgb(102, 102, 102); font-size: 16px;" >￥69</del></span>
                </a>
            </div>
        </div>
    </div>

</div>
<!-- 声学控件 -->
<div class="container-fluid div3-6">
    <h3 style="line-height: 80px;">魅族声学</h3>
</div>
<div class="container-fluid">
    <img src="<%=path%>/img/img4/01meizushengxue/banner.jpg" alt="" width="100%" >
</div>
<div class="container-fluid" style="background-color: rgb(244, 244, 244);">
    <div class="container">
        <div class="row div3-7">
            <div class="col-md-3">
                <a href="" style="background-image: url(<%=path%>/img/img4/01meizushengxue/001.jpg);background-size: 100%; height: 296px;" >
                    <span class="span3-6">魅族 HD60 头戴式蓝牙耳机</span>
                    <span class="span3-5">【魅友家首年庆|劵后299元+3期免息】</span>
                    <span class="span3-4">￥319</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/01meizushengxue/002.png" alt="" width="230px" >
                    <span class="span3-1">魅族 POP Pro 主动降噪耳机</span>
                    <span class="span3-3">【魅友家首年庆|劵后399元+3期免息】</span>
                    <span class="span3-2">￥439<del style="color: rgb(102, 102, 102); font-size: 16px;" >￥499</del></span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/01meizushengxue/003.png" alt="" width="230px" >
                    <span class="span3-1">魅族 POP2s 真无线耳机</span>
                    <span class="span3-3">【魅友家首年庆|劵后199元+3期免息】</span>
                    <span class="span3-2">￥219<del style="color: rgb(102, 102, 102); font-size: 16px;" >￥299</del></span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/01meizushengxue/004.png" alt="" width="230px" >
                    <span class="span3-1">魅族 HIFI 解码耳放</span>
                    <span class="span3-3">【魅友家首年庆|劵后价129元】</span>
                    <span class="span3-2">￥129</span>
                </a>
            </div>
        </div>
        <div class="row div3-7">
            <div class="col-md-3">
                <a href="" style="background-image: url(<%=path%>/img/img4/01meizushengxue/005.jpg);background-size: 100%; height: 296px;" >
                    <span class="span3-6">魅族 EP3C 耳机</span>
                    <span class="span3-5">Hi-Res认证高解析音质|Type-C数字接口</span>
                    <span class="span3-4">￥129</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/01meizushengxue/006.png" alt="" width="230px" >
                    <span class="span3-1">魅族 HD60 头戴式蓝牙耳机</span>
                    <span class="span3-3">【魅友家首年庆|劵后299元+3期免息】</span>
                    <span class="span3-2">￥319</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/01meizushengxue/007.png" alt="" width="230px" >
                    <span class="span3-1">魅族 HD60 降噪耳机</span>
                    <span class="span3-3">【魅友家首年庆|劵后799元+12期免息】</span>
                    <span class="span3-2">￥799</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/01meizushengxue/008.png" alt="" width="230px" >
                    <span class="span3-1">魅族 HALO 激光蓝牙耳机</span>
                    <span class="span3-3">炫酷夜跑神器 随性张扬</span>
                    <span class="span3-2">￥499</span>
                </a>
            </div>
        </div>
    </div>

</div>
<!-- 智能家居 -->
<div class="container-fluid div3-6">
    <h3 style="line-height: 80px;">Lipro 智能家居</h3>
</div>
<div class="container-fluid">
    <img src="<%=path%>/img/img4/02Lipro/banner.jpg" alt="" width="100%" >
</div>
<div class="container-fluid" style="background-color: rgb(244, 244, 244);">
    <div class="container">
        <div class="row div3-7">
            <div class="col-md-3">
                <a href="" style="background-image: url(<%=path%>/img/img4/02Lipro/001.jpg);background-size: 100%; height: 296px;" >
                    <span class="span3-6">魅族 Lipro LED 智能吸顶灯</span>
                    <span class="span3-5">2cm超薄灯体 Ra97高色彩还原 多平台智能互联</span>
                    <span class="span3-4">￥799</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/02Lipro/002.png" alt="" width="230px" >
                    <span class="span3-1">魅族 Lipro LED 智能吸顶灯</span>
                    <span class="span3-3">2cm超薄灯体 Ra97高色彩还原 护眼蓝光</span>
                    <span class="span3-2">￥499</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/02Lipro/003.png" alt="" width="230px" >
                    <span class="span3-1">Lipro LED 射灯 标准版</span>
                    <span class="span3-3">【上新福利|限时立省30元】双角度可调</span>
                    <span class="span3-2">￥129</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/02Lipro/004.png" alt="" width="230px" >
                    <span class="span3-1">Lipro LED 射灯 可控硅调光版</span>
                    <span class="span3-3">【上新福利|限时立省30元】可控硅调光</span>
                    <span class="span3-2">￥299</span>
                </a>
            </div>
        </div>
        <div class="row div3-7">
            <div class="col-md-3">
                <a href="" style="background-image: url(<%=path%>/img/img4/02Lipro/005.jpg);background-size: 100%; height: 296px;" >
                    <span class="span3-6">魅族 Lipro LED 灯光</span>
                    <span class="span3-5">博物馆级健康光 RG0舒适低蓝光</span>
                    <span class="span3-4">￥44.1</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/02Lipro/006.png" alt="" width="230px" >
                    <span class="span3-1">魅族 Lipro LED 简灯「标准版」</span>
                    <span class="span3-3">【限时特惠99元起】</span>
                    <span class="span3-2">￥99</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/02Lipro/007.png" alt="" width="230px" >
                    <span class="span3-1">魅族 Lipro LED 地脚灯</span>
                    <span class="span3-3">博物馆级健康光|主动式雷达检测</span>
                    <span class="span3-2">￥99</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/02Lipro/008.png" alt="" width="230px" >
                    <span class="span3-1">魅族 Lipro LED 灯带</span>
                    <span class="span3-3">博物馆级健康光|无可见频闪</span>
                    <span class="span3-2">￥999</span>
                </a>
            </div>
        </div>
        <div class="row div3-7">
            <div class="col-md-3">
                <a href="" style="background-image: url(<%=path%>/img/img4/02Lipro/009.jpg);background-size: 100%; height: 296px;" >
                    <span class="span3-6">魅族 Lipro LED 橱柜灯</span>
                    <span class="span3-5">全场景灵活补光|无感操控 悬停调光</span>
                    <span class="span3-4">￥179.1</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/02Lipro/010.png" alt="" width="230px" >
                    <span class="span3-1">魅族 Lipro 可控硅无极调光面板</span>
                    <span class="span3-3">前、后切式可控硅调光</span>
                    <span class="span3-2">￥199</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/02Lipro/011.png" alt="" width="230px" >
                    <span class="span3-1">魅族 Lipro 智能蓝牙控制器</span>
                    <span class="span3-3">支持调光、调色|蓝牙连接</span>
                    <span class="span3-2">￥89</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/02Lipro/012.png" alt="" width="230px" >
                    <span class="span3-1">魅族 Lipro 驱动电源</span>
                    <span class="span3-3">55W输出功率|铝制金属外壳</span>
                    <span class="span3-2">￥249</span>
                </a>
            </div>
        </div>
    </div>

</div>
<!-- 生活周边 -->
<div class="container-fluid div3-6">
    <h3 style="line-height: 80px;">生活周边</h3>
</div>
<div class="container-fluid">
    <img src="<%=path%>/img/img4/03shenghuo/banner.jpg" alt="" width="100%" >
</div>
<div class="container-fluid" style="background-color: rgb(244, 244, 244);">
    <div class="container">
        <div class="row div3-7">
            <div class="col-md-3">
                <a href="" style="background-image: url(<%=path%>/img/img4/03shenghuo/001.jpg);background-size: 100%; height: 296px;" >
                    <span class="span3-6">PANDAER 18 系列T恤</span>
                    <span class="span3-5">【满200减20】100%优质 50S 新疆长绒棉</span>
                    <span class="span3-4">￥129</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/03shenghuo/002.png" alt="" width="230px" >
                    <span class="span3-1">FLYME 九周年纪念T恤</span>
                    <span class="span3-3">【满200减20】100% 优质新疆长绒棉</span>
                    <span class="span3-2">￥129</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/03shenghuo/003.png" alt="" width="230px" >
                    <span class="span3-1">PANDAER「龍」T恤</span>
                    <span class="span3-3">【满200减20】极光印花|丝绸手感|无毛刺</span>
                    <span class="span3-2">￥129</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/03shenghuo/004.png" alt="" width="230px" >
                    <span class="span3-1">PANDAER「龍」T恤</span>
                    <span class="span3-3">【满200减20】极光印花|丝绸手感|无毛刺</span>
                    <span class="span3-2">￥129</span>
                </a>
            </div>
        </div>
        <div class="row div3-7">
            <div class="col-md-3">
                <a href="" style="background-image: url(<%=path%>/img/img4/03shenghuo/005.jpg);background-size: 100%; height: 296px;" >
                    <span class="span3-6">魅族防飞溅声波电动牙刷</span>
                    <span class="span3-5">【限时领劵299元|赠两支刷头】</span>
                    <span class="span3-4">￥239</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/03shenghuo/006.jpg" alt="" width="230px" >
                    <span class="span3-1">魅族 City Walk 双肩包</span>
                    <span class="span3-3">【满200减20】多收纳仓|减压耐磨</span>
                    <span class="span3-2">￥139</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/03shenghuo/007.png" alt="" width="230px" >
                    <span class="span3-1">Pandaer 魔术师帽衫</span>
                    <span class="span3-3">【满200减20】100%精梳棉纱</span>
                    <span class="span3-2">￥149</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/03shenghuo/008.png" alt="" width="230px" >
                    <span class="span3-1">魅族声波电动牙刷头</span>
                    <span class="span3-3">【满200减20|两支装】进口杜邦刷毛</span>
                    <span class="span3-2">￥59</span>
                </a>
            </div>
        </div>
    </div>

</div>
<!-- Flyme -->
<div class="container-fluid div3-6">
    <h3 style="line-height: 80px;">Flyme</h3>
</div>
<div class="container-fluid" style="background-color: rgb(244, 244, 244);">
    <div class="container">
        <div class="row div3-7">
            <div class="col-md-6">
                <a href="" style="background-image: url(<%=path%>/img/img4/04Flyme/001.png);background-size: 100%; height: 245px;" >
                </a>
            </div>

            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/04Flyme/002.jpg" alt="" width="262.5px" >
                    <span class="span3-7">Flyme 隐私安全白皮书</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/04Flyme/003.jpg" alt="" width="262.5px" >
                    <span class="span3-7">跨越使用小障碍</span>
                </a>
            </div>
        </div>
        <div class="row div3-7">
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/04Flyme/004.png" alt="" width="262.5px" >
                    <span class="span3-7">全新导入滤镜</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/04Flyme/005.png" alt="" width="262.5px" >
                    <span class="span3-7">全面提升续航能力</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/04Flyme/006.jpg" alt="" width="262.5px" >
                    <span class="span3-7">不得不知的小功能</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/04Flyme/007.jpg" alt="" width="262.5px" >
                    <span class="span3-7">快速挽救手机数据</span>
                </a>
            </div>
        </div>
    </div>
</div>
<!-- 精彩视频 -->
<div class="container-fluid div3-6">
    <h3 style="line-height: 80px;">精彩视频</h3>
</div>
<div class="container-fluid" style="background-color: rgb(244, 244, 244); padding-bottom: 50px;" >
    <div class="container">
        <div class="row div3-7">
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/05shipin/001.jpg" alt="" width="262.5px" >
                    <span class="span3-7">魅族 18 Pro</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/05shipin/002.jpg" alt="" width="262.5px" >
                    <span class="span3-7">魅族 18</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/05shipin/003.jpg" alt="" width="262.5px" >
                    <span class="span3-7">这十八年</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/05shipin/004.jpg" alt="" width="262.5px" >
                    <span class="span3-7">Lipro智能家居</span>
                </a>
            </div>
        </div>
        <div class="row div3-7">
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/05shipin/005.jpg" alt="" width="262.5px" >
                    <span class="span3-7">Flyme 9 功能视频</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/05shipin/006.jpg" alt="" width="262.5px" >
                    <span class="span3-7">Flyme 8 概念视频</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="" >
                    <img src="<%=path%>/img/img4/05shipin/007.jpg" alt="" width="262.5px" >
                    <span class="span3-7">Aicy</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="<%=path%>/img/img4/05shipin/008.jpg" alt="" width="262.5px" >
                    <span class="span3-7">安全家庭</span>
                </a>
            </div>
        </div>
    </div>
</div>
<div class="tops"></div>
<script src="<%=path%>/js/jquery-1.10.1.min.js"></script>
<script src="<%=path%>/js/bootstrap.js"></script>
</body>
</html>

