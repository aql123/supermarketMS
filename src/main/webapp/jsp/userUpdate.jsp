<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                <li id="active"><a href="userList.jsp">用户管理</a></li>
                <li ><a href="productList.jsp">商品管理</a></li>
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
            <span>用户管理页面 >> 用户修改页面</span>
        </div>
        <div class="providerAdd">
            <form action="${pageContext.request.contextPath}/user/updateUser" method="post">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <!--通过隐藏域传值-->
                <input name="id" type="hidden" value="${param.id }" />
                <div>
                    <label for="userName">用户名称：</label>
                    <input type="text" name="name" id="userName" placeholder="${param.name}" value="${param.name}"/>
                    <span >*</span>
                </div>

                <div>
                    <label >用户性别：</label>
					
                    <select name="sex">
                    	<c:if test="${param.sex == '女'}">
                        <option value="男">男</option>
                        <option value="女" selected>女</option>
                        </c:if>
                        <c:if test="${param.sex == '男'}">
                        <option value="男" selected>男</option>
                        <option value="女">女</option>
                        </c:if>
                        <c:if test="${param.sex == ''}">
                            <option value="男" selected>男</option>
                            <option value="女">女</option>
                        </c:if>
                    </select>
                </div>
                <div>
                    <label for="data">年龄：</label>
                    <input type="text" name="age" id="data" placeholder="${param.age}" value="${param.age}"/>
                    <span >*</span>
                </div>
                <div>
                    <label for="userphone">用户电话：</label>
                    <input type="text" name="phone" id="userphone" placeholder="${param.phone}" value="${param.phone}"/>
                    <span >*</span>
                </div>
                <div>
                    <label for="userAddress">用户地址：</label>
                    <input type="text" name="address" id="userAddress" placeholder="${param.address}" value="${param.address}"/>
                </div>
                <c:if test="${param.type =='管理员'}">
                <div>
                    <label >用户类别：</label>
                    <input type="radio" name="type" value="管理员" checked />管理员
                    <input type="radio" name="type" value="经理"/>经理
                    <input type="radio" name="type" value="普通用户"/>普通用户

                </div>
                </c:if>
                <c:if test="${param.type =='经理'}">
                <div>
                    <label >用户类别：</label>
                    <input type="radio" name="type" value="管理员"/>管理员
                    <input type="radio" name="type" value="经理" checked/>经理
                    <input type="radio" name="type" value="普通用户"/>普通用户

                </div>
                </c:if>
                <c:if test="${param.type =='普通用户'}">
                <div>
                    <label >用户类别：</label>
                    <input type="radio" name="type" value="管理员"/>管理员
                    <input type="radio" name="type" value="经理"/>经理
                    <input type="radio" name="type" value="普通用户" checked/>普通用户

                </div>
                </c:if>
                <c:if test="${param.type ==''}">
                    <div>
                        <label >用户类别：</label>
                        <input type="radio" name="type" value="管理员"/>管理员
                        <input type="radio" name="type" value="经理"/>经理
                        <input type="radio" name="type" value="普通用户" checked/>普通用户

                    </div>
                </c:if>
                <div class="providerAddBtn">
                    <input type="submit" value="保存">
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