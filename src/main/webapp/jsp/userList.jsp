<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>管理系统</title>
    <link rel="stylesheet" href="../css/public.css"/>
    <link rel="stylesheet" href="../css/style.css"/>
    <link rel="stylesheet" href="../css/font-awesome.min.css"/>
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
                    <li  id="active"><a href="#">用户管理</a></li>
                    <li><a href="productList.jsp">商品管理</a></li>
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
                <span>用户管理页面</span>
            </div>
            <div class="search">
                <span>用户名：</span>
                <input id="value" type="text" placeholder="请输入用户姓名"/>
                <input id="query" type="button" value="查询"/>
                <a href="/jsp/userAdd.jsp">添加
                    用户</a>
            </div>

            <!--用户-->
            <div style="height:590px;width:100%;display:block;overflow-y:auto;">
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <thead>
                <tr class="firstTr">
                    <th width="10%">用户编码</th>
                    <th width="10%">用户名称</th>
                    <th width="10%">姓名</th>
                    <th width="10%">性别</th>
                    <th width="10%">年龄</th>
                    <th width="10%">电话</th>
                    <th width="10%">用户类型</th>
                    <th width="30%">操作</th>
                </tr>
                </thead>
                <tbody id="data">

                </tbody>
            </table>
            </div>
        </div>
    </section>

    <footer class="footer">
    </footer>

<script src="/js/jquery.js"></script>
<script src="/js/js.js"></script>
<script src="/js/time.js"></script>

<script type="text/javascript">
    $(function () {

        //发送ajax请求获取所有数据
        selectAllUser();
        //为查询绑定单击事件
        $("#query").click(function () {
            selectUsers();
        });
        //selectUsers方法发送ajax请求
        function selectUsers() {
            var value = $("#value").val();
            $.ajax({
                url:"${pageContext.request.contextPath}/user/likeQueryUser",
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
        //selectAllUser方法发送ajax请求查询所有数据
        function selectAllUser() {
            $.ajax({
                url:"${pageContext.request.contextPath}/user/userList",
                type:"get",
                dataType: "json",
                success:function (resp) {
                    print(resp);
                }
            })
        }
        //print方法打印输出数据
        function print(resp) {
            $("#data").html("");
            $.each(resp,function (i,n) {
                $("#data").append("<tr>\n" +
                    " <td>"+n.id+"</td>\n" +
                    " <td>"+n.username+"</td>\n" +
                    " <td>"+n.name+"</td>\n" +
                    " <td>"+n.sex+"</td>\n" +
                    " <td>"+n.age+"</td>\n" +
                    " <td>"+n.phone+"</td>\n" +
                    " <td>"+n.type+"</td>\n" +
                    "<td>\n" +
                    "    <a href=\"../../jsp/userView.jsp?id="+n.id+"&username="+n.username+"&name="+n.name+"&sex="+n.sex+"&phone="+n.phone+"&age="+n.age+"\n" +
                    "&address="+n.address+"&type="+n.type+"\"><img src=\"../../img/read.png\" alt=\"查看\" title=\"查看\"/></a>\n" +
                    "    <a href=\"../../jsp/userUpdate.jsp?id="+n.id+"&username="+n.username+"&name="+n.name+"&sex="+n.sex+"&phone="+n.phone+"&age="+n.age+"\n" +
                    "&address="+n.address+"&type="+n.type+"\"><img src=\"../../img/xiugai.png\" alt=\"修改\" title=\"修改\"/></a>\n" +
                    "    <a onclick=\"return confirm('确定将此记录删除?')\" href=\"${pageContext.request.contextPath}/user/delUser?id="+n.id+"\" class=\"removeUser\">" +
                    "<img src=\"../../img/schu.png\" alt=\"删除\" title=\"删除\"/></a>\n" +
                    "</td>"
                )
            })
        }
    })
</script>
</body>
</html>

