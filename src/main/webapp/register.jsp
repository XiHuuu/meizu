<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <% String path = request.getContextPath();%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>注册-魅族官网</title>
    <link rel="shortcut icon" href="<%=path%>/img/img4/biaotu.ico" type="image/x-icon">
    <link rel="stylesheet" href="<%=path%>/css/index9.css">
    <link rel="stylesheet" href="<%=path%>/css/bootstrap.css">
    <script src="<%=path%>/js/jquery-1.10.1.min.js"></script>
    <script src="<%=path%>/js/bootstrap.js"></script>
    <script>
        $(document).ready(function (){
            $('#code_img').click(function (){
                this.src = "${pageContext.request.contextPath}/kaptcha.jpg?d=" + new Date();
            });
        });
    </script>
</head>
<body>

<!--魅族logo图标-->
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <a href="${pageContext.request.contextPath}/phone/getPhones?url=index">
                <img src="<%=path%>/img/img2.html/S9YEA8AE`RP550TC`4EJ_68.png" width="160px" height="68px">
            </a>
        </div>
    </div>
</div>

<div class="container-fluid"
     style="width: 100%; height: 460px; background: #fcfbfb url('img/img2.html/zhuce.jpg') no-repeat; width: 1280px;">

    <div class="row">
        <div class="col-md-8">

        </div>

        <div class="col-md-3">
            <div
                    style="width: 440px; border: 1px solid #E7E7E7; padding: 20px 0 20px 30px; border-radius: 5px; margin-top: 100px; background: #fff;">
                <h3 class="opp">
                    <a href="" style="text-decoration: none;">
                        注册Flyme账号
                    </a>
                </h3>
                <div class="row8">
                    <div class="col-lg-8"  >
                        <div class="input-group input-group-lg" >
<%--                            <div class="input-group-btn">--%>
<%--                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">+86<span class="caret"></span></button>--%>
<%--                                <ul class="dropdown-menu">--%>
<%--                                    <li><a href="#">常用</a></li>--%>
<%--                                    <li><a href="#">中国  +86</a></li>--%>
<%--                                    <li><a href="#">中国台湾  +886</a></li>--%>
<%--                                    <li><a href="#">中国香港  +852</a></li>--%>
<%--                                    <li><a href="#">Brazil +55</a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
                            <form action="${pageContext.request.contextPath}/user/register" method="post">
                                <input name="username" type="text" class="form-control" aria-label="..."placeholder="用户账号">
                                <input name="password" type="password" class="form-control" aria-label="..."placeholder="用户密码">
                                <input style="width: 100px;margin-bottom: 30px;margin-right: 20px" type="text" placeholder="验证码" name="code"><img style="width: 100px;height: 30px" id="code_img" alt="" src="${pageContext.request.contextPath}/kaptcha.jpg">
                                <button type="submit" class="btn btn-primary btn-lg">   立即注册     </button>
                            </form>
                        </div>

                    </div>
                </div>


<%--                <div class="row9">--%>
<%--                    <div class="col-lg-12">--%>
<%--                        <div class="input-group input-group-lg">--%>
<%--                        <span class="input-group-btn">--%>
<%--                          <button class="btn btn-default" type="button"><a><img src="<%=path%>/img/img2.html/yanzheng.png"></a></button>--%>
<%--                        </span>--%>
<%--                            <input type="text" class="form-control"  placeholder="点击按钮进行验证">--%>

<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

                <div class="row">
                    <div class="col-lg-12">
                        <label class="ppp" >注册账号即表示您同意并愿意遵守</label>
                        <a href="" style="text-decoration: none;">Flyme账号协议</a>
                        <label>、</label>
                        <a href="" style="text-decoration: none;">法律声明</a>
                        <label>和</label>
                        <a href="" style="text-decoration: none;">隐私政策</a>
                    </div>
                </div>



<%--                <div class="row4">--%>
<%--                    <div class="col-lg-12">--%>
<%--                        <p>--%>
<%--                            <button type="button" class="btn btn-primary btn-lg">   立即注册     </button>--%>

<%--                        </p>--%>
<%--                    </div>--%>
<%--                </div>--%>

                <div class="row">
                    <div class="col-lg-12">
                        <a href="<%=path%>/login.jsp" style="text-decoration: none;">登录</a>
                    </div>
                </div>

            </div>
            <div class="col-md-1">

            </div>
        </div>
    </div>




</div>
</div>
</div>

<div class="container-fluid">
    <div class="rows">
        <div class="col-md-6">
            <div class="redm">
                <a href="" style="text-decoration: none;">关于魅族</a>
                |
                <a href="" style="text-decoration: none;">工作机会</a>
                |
                <a href="" style="text-decoration: none;">联系我们</a>
                |
                <a href="" style="text-decoration: none;">法律声明</a>
                |
                <a href="" style="text-decoration: none;">常见问题</a>
                |
                <a href="" style="text-decoration: none;">简体中文</a>
                |
            </div>
        </div>
        <div class="col-md-3">
            客服热线  400-788-333
        </div>

        <div class="col-md-3">
            <div class="rty">
                <img src="img/img2.html/weibo.png" width="32px" height="32px">
                <img src="img/img2.html/weixin.png" width="32px" height="32px">
                <img src="img/img2.html/kongjian.png" width="32px" height="32px">
            </div>
        </div>

    </div>
</div>
</div>

<div class="container-fluid">
    <div class="rowr">
        <div class="col-md-12">
            ©2021 Meizu Telecom Equipment Co., Ltd. All rights reserved.备案号: 粤ICP备13003602号-4经营许可证编号: 粤B2-20130198营业执照
        </div>
    </div>
</div>


</body>
