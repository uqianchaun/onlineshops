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
<section class="publicMian ">
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
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>商品信息管理页面 >> 商品添加页面</span>
        </div>
        <div class="providerAdd">
            <form action="<%=pageContext.getServletContext().getContextPath() %>/goods/addGoods.action" method="post" name="myform" enctype="multipart/form-data">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="">
                    <label for="billName">商品名称：</label>
                    <input type="text" name="gname" id="billName" required/>
                    <span >*请输入商品名称</span>
                </div>
                <div>
                    <label for="billCom">商品图片：</label>
                    <input type="file" name="image" id="billCom" required/>
                    <span>*图片</span>

                </div>
                <div>
                    <label for="billNum">商品所属种类：</label>
                    <input type="text" name="gkinds" id="billkinds" required/>
                    <span>*请输入商品种类</span>
                </div>
                 <div>
                    <label for="billNum">商品数量：</label>
                    <input type="text" name="gnumber" id="billNum" required/>
                    <span>*请输入商品数量</span>
                </div>
                <div>
                    <label for="money">商品单价：</label>
                    <input type="text" name="gmoney" id="money" required/>
                    <span>*请输入商品单价</span>
                </div>
                 <div>
                    <label for="description">商品详细信息：</label>
                    <input type="text" name="descript" id="description" required/>
                    <span>*请输入商品详细信息</span>
                </div>
                
                <div class="providerAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="billList.jsp">返回</a>-->
                    <input type="submit" value="保存" onclick="history.back(-1)"/>
                    <input type="submit" value="返回" onclick="history.back(-1)"/>
                </div>
            </form>
        </div>

    </div>
</section>
<footer class="footer">
</footer>
<script src="js/time.js"></script>

</body>
</html>