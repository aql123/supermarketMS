<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>管理系统</title>
    <link rel="stylesheet" href="../css/public.css"/>
    <link rel="stylesheet" href="../css/style.css"/>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>管理系统</h1>

    <div class="publicHeaderR">
        <p><span>下午好！</span><span style="color: #fff21b"> ${sessionScope.user.name}</span> , 欢迎你！</p>
        <a href="../login.jsp">退出</a>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time">2020年1月1日 11:11  星期一</span>
</section>
<!--主体内容-->
<section class="publicMian ">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li><a href="userList.jsp">用户管理</a></li>
                <li id="active"><a href="productList.jsp">商品管理</a></li>
                <li><a href="billList.jsp">账单管理</a></li>
                <li><a href="password.jsp">密码修改</a></li>
                <li><a href="../login.jsp">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <div class="right">
        <span id="hours"></span>
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>管理页面 >> 商品修改页</span>
        </div>
        <div class="providerAdd">
            <form action="${pageContext.request.contentType}/product/updateProduct" method="post">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <input type="text" name="id" value="${param.id}" hidden/>
                <div class="">
                    <label for="type">品牌：</label>
                    <input type="text" name="type" id="type" value="${param.type}"/>
                    <span></span>
                </div>
                <div>
                    <label for="name">商品名称：</label>
                    <input type="text" name="name" id="name" value="${param.name}"/>
                    <span ></span>
                </div>
                <%--<div>
                    <label for="version">版本：</label>
                    <input type="text" name="version" id="version" value="${param.version}"/>
                    <span></span>

                </div>--%>
                <div>
                    <label for="price">单价：</label>
                    <input type="text" name="price" id="price" value="${param.price}"/>
                    <span></span>
                </div>
                <div>
                    <label for="number">数量：</label>
                    <input type="text" name="number" id="number" value="${param.number}"/>
                    <span></span>

                </div>
                <div>
                    <label for="info">描述：</label>
                    <input type="text" name="info" id="info" value="${param.info}"/>
                    <span></span>

                </div>
                <div class="providerAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="productList.jsp">返回</a>-->
                    <input type="button" value="保存" onclick="document.forms[0].submit()"/>
                    <input type="button" value="返回" onclick="history.back(-1)"/>
                </div>
            </form>
        </div>

    </div>
</section>
<footer class="footer">
</footer>
<script src="../js/time.js"></script>

</body>
</html>