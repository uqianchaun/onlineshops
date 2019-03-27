<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>管理员系统</title>
    <link rel="stylesheet" href="../css1/public.css"/>
    <link rel="stylesheet" href="../css1/style.css"/>
    <script src="../js/time.js"></script>
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
    <section class="publicMian ">
        <div class="left">
            <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
            <nav>
                <ul class="list">
                    <li><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_goodsList.jsp">商品信息管理</a></li>
                <li><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_orderingList.jsp">订单信息管理</a></li>
                <li id="active"><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_userList.jsp">用户信息管理</a></li>
                <li><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_password.jsp">密码修改</a></li>
                <li><a href="<%=pageContext.getServletContext().getContextPath() %>/judge/cancel.action">退出系统</a></li>
                </ul>
            </nav>
        </div>
        <div class="right">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>用户管理页面</span>
            </div>
            <div class="search">
            <form action="<%=pageContext.getServletContext().getContextPath() %>/user/queryUserByAdmin.action" method="post" name="myform">
			用户登录号：<input type="text" name="login_id"/>
			用户名称：<input type="text" name="client_rename"/>
			<input type="submit" value="查询"/>
			</form>
</div>
            <!--用户-->
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="10%">用户登录号</th>
                    <th width="10%">用户密码</th>
                    <th width="10%">用户姓名</th>
                    <th width="10%">用户昵称</th>
                    <th width="10%">用户性别</th>
                    <th width="10%">用户年龄</th>
                    <th width="10%">用户电话</th>
                    <th width="10%">用户金额</th>
                    <th width="10%">用户地址</th>
                    <th width="10%">用户类型</th>
                </tr>
        <c:forEach items="${users}" var="u">
		<tr>
			<td>${u.login_id }</td>
			<td>${u.login_password  }</td>
			<td>${u.client_name  }</td>
			<td>${u.client_rename  }</td>
			<td>${u.client_sex  }</td>
			<td>${u.client_age   }</td>
			<td>${u.client_tel  }</td>
			<td>${u.client_money  }</td>
			<td>${u.client_address  }</td>
			<td>${u.rights  }</td>	
		</tr>
	</c:forEach>
            </table>

        </div>
    </section>
    <footer class="footer">
    </footer>

<script src="js/jquery.js"></script>
<script src="js/js.js"></script>
<script src="js/time.js"></script>

</body>
</html>