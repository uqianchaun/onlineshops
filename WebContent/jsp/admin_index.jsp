<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>管理员系统</title>
    <link rel="stylesheet" href="<%=pageContext.getServletContext().getContextPath() %>/css1/public.css"/>
    <link rel="stylesheet" href="<%=pageContext.getServletContext().getContextPath() %>/css1/style.css"/>
    <script src="<%=pageContext.getServletContext().getContextPath() %>/js/time.js"></script>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>欢迎来到管理员系统</h1>

    <div class="publicHeaderR">
        <p><span id="hours"></span><span style="color: #fff21b"> Admin</span> , 欢迎你！</p>
        <a href="<%=pageContext.getServletContext().getContextPath() %>/judgelogin/delete.action">退出</a>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time"></span>
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
<!--主体内容-->
<section class="publicMian">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li ><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_goodsList.jsp">商品信息管理</a></li>
                <li><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_orderingList.jsp">订单信息管理</a></li>
                <li><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_userList.jsp">用户信息管理</a></li>
                <li><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_password.jsp">密码修改</a></li>
                <li><a href="<%=pageContext.getServletContext().getContextPath() %>/judge/cancel.action">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <div class="right">
        <img class="wColck" src="../img/clock.jpg" alt=""/>
        <div class="wFont">
            <h2>Admin</h2>
            <p>欢迎来到管理员系统!</p>
			<span id="hours"></span>
        </div>
    </div>
</section>
<footer class="footer">
</footer>
<script src="js/time.js"></script>
<div style="text-align:center;">
</div>
</body>
</html>