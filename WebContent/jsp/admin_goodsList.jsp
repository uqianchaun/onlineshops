<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<meta charset="UTF-8">
<title>管理员系统</title>
<link rel="stylesheet"
	href="<%=pageContext.getServletContext().getContextPath() %>/css1/style.css" />
<link rel="stylesheet"
	href="<%=pageContext.getServletContext().getContextPath() %>/css1/public.css" />
<script
	src="<%=pageContext.getServletContext().getContextPath() %>/js/time.js"></script>
<script>
	function deleteProduct(url){
		if(confirm("确定删除该商品吗？")){
			//delete  
			window.location.href=url;
		}
	}
</script>


</head>
<body>
	<!--头部 -->
	<header class="publicHeader">
	<h1>欢迎来到管理员系统</h1>
	<div class="publicHeaderR">
		<p>
			<span id="hours"></span><span style="color: #fff21b"> Admin</span> ,
			欢迎你！
		</p>
		<a
			href="<%=pageContext.getServletContext().getContextPath() %>/judgelogin/delete.action">退出</a>
	</div>
	</header>
	<!--时间 -->
	<section class="publicTime"> <span id="time"></span> <a
		href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a> </section>
	<!--主体内容 -->
	<section class="publicMian ">
	<div class="left">
		<h2 class="leftH2">
			<span class="span1"></span>功能列表 <span></span>
		</h2>
		<nav>
		<ul class="list">
			<li id="active"><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_goodsList.jsp">商品信息管理</a></li>
                <li><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_orderingList.jsp">订单信息管理</a></li>
                <li><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_userList.jsp">用户信息管理</a></li>
                <li><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_password.jsp">密码修改</a></li>
                <li><a href="<%=pageContext.getServletContext().getContextPath() %>/judge/cancel.action">退出系统</a></li>
		</ul>
		</nav>
	</div>
	<div class="right">
		<div class="location">
			<strong>你现在所在的位置是:</strong> <span>商品信息管理页面</span>
		</div>
		<div class="search">

			<form
				action="<%=pageContext.getServletContext().getContextPath() %>/goods/queryGoods.action"
				method="post" name="myform2">
				商品编号：<input type="text" name="gid" value="${gs.gid }" /> 商品名称：<input
					type="text" name="gname" value="${gs.gname }" /> <input
					type="submit" class="input-sm" value="查询" /> <a
					href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_goodsAdd.jsp">添加商品</a>
			</form>

		</div>



		<!--账单表格 样式和供应商公用-->
		<table class="providerTable" cellpadding="0" cellspacing="0">
			<tr class="firstTr">
				<th width="10%">商品编码</th>
				<th width="20%">商品名称</th>
				<th width="10%">商品图片</th>
				<th width="10%">商品所属种类</th>
				<th width="10%">商品数量</th>
				<th width="10%">商品单价</th>
			</tr>
			<c:forEach items="${goods}" var="g">
				<tr>
					<td>${g.gid }</td>
					<td>${g.gname }</td>
					<td><img src="/image/${g.gpicture }" /></td>
					<td>${g.gkinds }</td>
					<td>${g.gnumber }</td>
					<td>${g.gmoney }</td>
					<%-- <%=pageContext.getServletContext().getContextPath() %>/product/delete.action?pid=${p.pid } --%>
					<td><a
						href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_goodsAddPic.jsp?id=${g.gid } ">
							<img src="../img/adddd.png" alt="添加图片" title="添加图片" />
					</a>&nbsp; <a
						href="<%=pageContext.getServletContext().getContextPath() %>/goods/updateGoodsById.action?gid=${g.gid }">
							<img src="../img/xiugai.png" alt="修改" title="修改" />
					</a>&nbsp; <a
						href="javascript:deleteProduct('<%=pageContext.getServletContext().getContextPath() %>/goods/deleteGoods.action?gid=${g.gid }')">
							<img src="../img/schu.png" alt="删除" title="删除" />
					</a></td>
				</tr>
			</c:forEach>
		</table>
		<br />
		<script>
            function tijiao(url)
            {
            	document.getElementsByName("myform2")[0].action=url;
            	document.getElementsByName("myform2")[0].submit();
            }
       </script>
		<c:choose>
			<c:when test="${pagenow+1!=1 }">
				<div class="col-md-8 col-md-offset-4">
					<ul class="pagination pagination-lg">
						<li><a class="btn btn-success"
							href="javascript:tijiao('<%=pageContext.getServletContext().getContextPath() %>/goods/queryGoods.action?page=${pagenow-1 }')"><i
								class="fa fa-angle-left">«上一页</i></a></li>
						<li><a
							href="javascript:tijiao('<%=pageContext.getServletContext().getContextPath() %>/goods/queryGoods.action?page=${pagenow+1 }')"><i
								class="fa fa-angle-right">下一页»</i></a></li>
					</ul>
				</div>
			</c:when>
			<c:otherwise>

			</c:otherwise>
		</c:choose>



		<div class="clearfix"></div>
		<%-- <a href="javascript:tijiao('<%=pageContext.getServletContext().getContextPath() %>/goods1/query1.action?page=${pagenow-1 }')"><h2>上一页</h2></a>
        <a href="javascript:tijiao('<%=pageContext.getServletContext().getContextPath() %>/goods1/query1.action?page=${pagenow+1 }')"><h2>下一页</h2></a> --%>
	</div>
	</section>

	<!--点击删除按钮后弹出的页面-->
	<!-- <div class="zhezhao"></div> -->
	<!-- <div class="remove" id="removeBi"> -->
	<!--     <div class="removerChid"> -->
	<!--         <h2>提示</h2> -->
	<!--         <div class="removeMain"> -->
	<!--             <p>你确定要删除该商品吗？</p> -->
	<!--             <a href="#" id="yes">确定</a> -->
	<!--             <a href="#" id="no">取消</a> -->
	<!--         </div> -->
	<!--     </div> -->
	<!-- </div> -->

	<!--     <footer class="footer"> -->
	<!--     </footer> -->

	<script src="js/jquery.js"></script>
	<script src="js/js.js"></script>
	<script src="js/time.js"></script>

</body>
</html>