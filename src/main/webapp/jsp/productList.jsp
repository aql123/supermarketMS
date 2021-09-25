<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
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
            <span>管理页面</span>
        </div>
        <div class="search">
            <span>商品名称：</span>
            <input id="value" type="text" placeholder="请输入商品的名称"/>
            <input id="query" type="button" value="查询"/>
            <a href="providerAdd.jsp">添加商品</a>
        </div>

        <!--商品操作表格-->
        <div style="height:590px;width:100%;display:block;overflow-y:auto;">
        <table class="providerTable" cellpadding="0" cellspacing="0">
            <thead>
            <tr class="firstTr">
                <th width="10%">商品编码</th>
                <th width="10%">商品名称</th>
                <th width="10%">品牌</th>
                <th width="10%">版本</th>
                <th width="10%">单价（元）</th>
                <th width="10%">数量</th>
                <th width="20%">图片</th>
                <th width="20%">操作</th>
            </tr>
            </thead>
            <tbody id="data">




                <%--<c:forEach items="list" var="n">
                    <tr>
                        <td>${n.id}</td>
                        <td>${n.name}</td>
                        <td>${n.type}</td>
                        <td>${n.price}</td>
                        <td>${n.number}</td>
                        <td>${n.creat_date}</td>
                        <td><img src="../images/${n.img}.jpg"/></td>
                        <td>
                            <a href="productView.jsp"><img src="../img/read.png" alt="查看" title="查看"/></a>
                            <a href="productUpdate.jsp"><img src="../img/xiugai.png" alt="修改" title="修改"/></a>
                            <a href="#" class="removeProvider"><img src="../img/schu.png" alt="删除" title="删除"/></a>
                        </td>
                    </tr>
                </c:forEach>--%>
            </tbody>

        </table>
        </div>

    </div>
</section>
<footer class="footer">
</footer>

<script src="../js/jquery.js"></script>
<script src="../js/js.js"></script>
<script src="../js/time.js"></script>
<script type="text/javascript">
    selectAllUser();
    //为查询绑定单击事件
    $("#query").click(function () {
        selectUsers();
    });
    //selectAllUser方法发送ajax请求查询所有数据
    function selectAllUser() {
        $.ajax({
            url:"${pageContext.request.contextPath}/product/queryAll",
            type:"get",
            dataType: "json",
            success:function (resp) {
                print(resp);
            }
        })
    }


    //selectUsers方法发送ajax请求
    function selectUsers() {
        var value = $("#value").val();
        $.ajax({
            url:"${pageContext.request.contextPath}/product/likeQueryUser",
            type:"get",
            data:{
                name:""+value+""
            },
            dataType:"json",
            success:function (resp) {
                print(resp);
            }
        })
    }



    /*<fmt:formatDate value='' type='both'/>*/

    function print(resp) {
        $("#data").html("");//清空
        $.each(resp,function (i,n) {
            $("#data").append("<tr>\n" +
                "    <td>"+n.id+"</td>\n" +
                "    <td>"+n.name+"</td>\n" +
                "    <td>"+n.type+"</td>\n" +
                "    <td>"+n.version+"</td>\n" +
                "    <td>"+n.price+"</td>\n" +
                "    <td>"+n.number+"</td>\n" +
                "    <td><img src=\"../images/"+n.img+".png\" height=\"100px\" width=\"100px\"/></td>\n" +
                "    <td>\n" +
                "        <a href=\"productView.jsp?name="+n.name+"&type="+n.type+"" +
                "&price="+n.price+"&number="+n.number+"&img="+n.img+"&version="+n.version+"" +
                "&info="+n.info+"\"><img src=\"../img/read.png\" alt=\"查看\" title=\"查看\"/></a>\n" +
                "        <a href=\"productUpdate.jsp?id="+n.id+"&name="+n.name+"&type="+n.type+"" +
                "&price="+n.price+"&number="+n.number+"&version="+n.version+"" +
                "&info="+n.info+"\"><img src=\"../img/xiugai.png\" alt=\"修改\" title=\"修改\"/></a>\n" +
                "        <a <a onclick=\"return confirm('确定将此记录删除?')\" href=\"${pageContext.request.contextPath}/product/delProduct?id="+n.id+"\"" +
                " class=\"removeProvider\"><img src=\"../img/schu.png\" alt=\"删除\" title=\"删除\"/></a>\n" +
                "    </td>\n" +
                "</tr>")
        })
    }
</script>
</body>
</html>