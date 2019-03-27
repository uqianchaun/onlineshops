<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PersonCenter</title>
<!--css-->
<link
	href="<%=pageContext.getServletContext().getContextPath()%>/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<link
	href="<%=pageContext.getServletContext().getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<link
	href="<%=pageContext.getServletContext().getContextPath()%>/css/font-awesome.css"
	rel="stylesheet">
<!--css-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		
</script>
<script
	src="<%=pageContext.getServletContext().getContextPath()%>/js/jquery.min.js"></script>
<link href='https://fonts.googleapis.com/css?family=Cagliostro'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300'
	rel='stylesheet' type='text/css'>
<!--search jQuery-->
<script
	src="<%=pageContext.getServletContext().getContextPath()%>/js/main.js"></script>
<!--search jQuery-->

<!--mycart-->
<script type="text/javascript"
	src="<%=pageContext.getServletContext().getContextPath()%>/js/bootstrap-3.1.1.min.js"></script>
<!-- cart -->
<script
	src="<%=pageContext.getServletContext().getContextPath()%>/js/simpleCart.min.js"></script>
<!-- cart -->
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="top-left">
					<a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/mailus.jsp">联系我们 <i class="glyphicon glyphicon-phone"
						aria-hidden="true"></i> 199-1762-9837
					</a>
				</div>
				<div class="top-right">
					<ul>
						<c:choose>
							<c:when test="${sessionScope.rename!=null }">
								<li><font style="font-weight: bolder;" color="white">欢迎
										${sessionScope.rename}</font></li>
								<li><a
									href="<%=pageContext.getServletContext().getContextPath()%>/user/personCenter.action?flag=2">个人中心</a>
								</li>
								<li><a
									href="<%=pageContext.getServletContext().getContextPath()%>/judge/cancel.action">
										注销 </a></li>
							</c:when>
							<c:otherwise>
								<li><a
									href="<%=pageContext.getServletContext().getContextPath()%>/jsp/login.jsp">登录</a></li>
								<li><a
									href="<%=pageContext.getServletContext().getContextPath()%>/jsp/registered.jsp">
										注册 </a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="heder-bottom">
			<div class="container">
				<div class="logo-nav">
					<div class="logo-nav-left">
						<h1>
								<a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/index.jsp">New Shop <span>Shop anywhere</span>
							</a>
						</h1>
					</div>
					<div class="logo-nav-left1">
						<nav class="navbar navbar-default"> <!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header nav_2">
							<button type="button"
								class="navbar-toggle collapsed navbar-toggle1"
								data-toggle="collapse" data-target="#bs-megadropdown-tabs">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
							<ul id="main1">
								<li class="active"><a href="#" class="act">美妆物品</a>
									<ul class="drop">
										<div>
											<li><a
												href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=化妆品"
												class="act">化妆品</a></li>


										</div>
									</ul></li>
							</ul>
							<ul id="main1">
								<li class="active"><a href="#" class="act">交通工具</a>
									<ul class="drop">
										<div>
											<li><a
												href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=自行车"
												class="act">自行车</a></li>


										</div>
									</ul></li>
							</ul>


							<ul id="main1">
								<li class="active"><a href="#" class="act">食品</a>
									<ul class="drop">
										<div>
											<li><a
												href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=零食"
												class="act">零食</a></li>

											<li><a
												href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=饮料"
												class="act">饮料</a></li>


										</div>
									</ul></li>
							</ul>
							<ul id="main1">
								<li class="active"><a href="#" class="act">电子产品</a>
									<ul class="drop">
										<div>
											<li><a
												href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=电脑"
												class="act">电脑</a></li>

											<li><a
												href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=电视"
												class="act">电视</a></li>

											<li><a
												href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=手机"
												class="act">手机</a></li>
										</div>
									</ul></li>
							</ul>
							<ul id="main1">
								<li class="active"><a href="#" class="act">服装</a>
									<ul class="drop">
										<div>
											<li><a
												href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=上衣"
												class="act">上衣</a></li>

											<li><a
												href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=裤子"
												class="act">裤子</a></li>

											<li><a
												href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=鞋子"
												class="act">鞋子</a></li>
										</div>
									</ul></li>
							</ul>

						</div>
						</nav>
					</div>
					<div class="logo-nav-right">
						<ul class="cd-header-buttons">
							<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a>
							</li>
						</ul>
						<!-- cd-header-buttons -->
						<div id="cd-search" class="cd-search">
							<form
								action="<%=pageContext.getServletContext().getContextPath()%>/goods/queryLikesGoods.action"
								method="post">
								<input name="dec" type="search" placeholder="Search...">
							</form>
						</div>
					</div>
					<div class="header-right2">
						<div class="cart box_1">
							<a
								href="<%=pageContext.getServletContext().getContextPath()%>/car/queryCar.action">
								<h3>
									<div class="total">
										<font size="2">(我的购物车)</font></div>
									
								</h3>
								
									<img
										src="<%=pageContext.getServletContext().getContextPath()%>/images/bag.png"
										alt="" />
							</a>

							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--header-->
	<!--banner-->
	<div class="banner1">
		<div class="container">
			<h3>
				<a
					href="<%=pageContext.getServletContext().getContextPath()%>/jsp/index.jsp">主界面</a>
				/ <span>我的订单</span>
			</h3>
		</div>
	</div>
	<!--banner-->

	<!--content-->

	<!--login-->

	<div class="main-agileitsc">

		<div class="form-w3agile">

			<div class="button">
				<section class="publicMian">
				<div class="left">

					<ul class="nav navbar-nav">
					<img
						 src="<%=pageContext.getServletContext().getContextPath() %>/images/1.png" height: "50%" class=" img-responsive img-thumbnail">
					<li>
					<a
						href="<%=pageContext.getServletContext().getContextPath() %>/user/personCenter.action?flag=1" 
						> <font size="5">完善信息</font>
					</a>
					</li> 
					<li>
					<a
						href="<%=pageContext.getServletContext().getContextPath() %>/user/personCenter.action?flag=2"
						> <font size="5">个人资料</font>
					</a>
					</li> 
					<li>
					<a
						href="<%=pageContext.getServletContext().getContextPath() %>/user/personCenter.action?flag=3"
						> <font size="5">账户充值</font>
					</a>
					</li>
					<li>
					 <a
						href="<%=pageContext.getServletContext().getContextPath() %>/order/queryOrdering.action"
						> <font size="5">查看订单</font>
					</a> 
					</li>
					<li>
					<a
						href="<%=pageContext.getServletContext().getContextPath() %>/user/personCenter.action?flag=4"
						> <font size="5">收货地址</font>
					</a> 
					</li>
					<li>
					<a
						href="<%=pageContext.getServletContext().getContextPath() %>/user/personCenter.action?flag=5"
						> <font size="5">修改密码</font>
					</a>
					</li>
				</ul>
				</div>

				<div class="right4">

					<c:forEach items="${orders}" var="oo">
						<div class="cart-items">
							<div class="cart-sec">
								<c:forEach items="${oo.connects }" var="dd">

									<div class="cart-header">
										<div class="cart-sec1">
											<div class="cart-item ">
												<a href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=${dd.gid}"><img
												src="/image/${dd.gpicture }" /></a>
											</div>
											<div class="cart-item-info">
												<h5>
													<center>
														<font size="6"><span> <a
																	href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=${dd.gid}">${dd.gname }</a></span>
																	</font>
																	
													</center>
												</h5>
												</br> </br> </br>
												<div class="delivery">
													<p>
														<font size="4">商品数量：${dd.count  }</font>
													</p>
													<p>
														<a href="<%=pageContext.getServletContext().getContextPath()%>/goods/reviewGoods.action?gid=${dd.gid }"><font size="4">添加评价/追加评价</font></a>
													</p>
												</div>

											</div>
											<div class="clearfix"></div>
                                            
										</div>
									</div>
								</c:forEach>

								<div class="cart-item-info">


									<font size="4" color="#A6A6A6">用户地址：${oo.user.client_address }</font>

									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

									<font size="4" color="#A6A6A6">订单总金额：${oo.dd_money }</font>




								</div>

								<div class="delivery2">
									<p>
										<font size="3">下单时间：${oo.dd_date }</font>
									</p>
								</div>
								</br>
								</br>
								</br>
							</div>
						</div>
					</c:forEach>

				</div>
				</section>
			</div>
		</div>
	</div>

	<!--login-->

	<!--content-->
	<!---footer--->
	<div class="footer-w3l">
			<div class="container">
				<div class="footer-grids">
					<div class="col-md-3 footer-grid foot">
						<a
							href="<%=pageContext.getServletContext().getContextPath()%>/jsp/mailus.jsp"><h4>联系我们</h4></a>
						<ul>
							<li><i class="glyphicon glyphicon-map-marker"
								aria-hidden="true"></i> <a href="#">uqianchuan</a></li>
							<li><i class="glyphicon glyphicon-earphone"
								aria-hidden="true"></i> <a href="#">199-1762-9837</a>
							</li>
							<li><i class="glyphicon glyphicon-envelope"
								aria-hidden="true"></i> <a href="mailto:example@mail.com">
									1119502724@qq.com</a></li>

						</ul>
					</div>
					<div class="clearfix"></div>
				</div>

			</div>
		</div>
	<!---footer--->
	<!--copy-->
	<div class="copy-section">
		<div class="container">
			<div class="copy-left">
				
			</div>
			<div class="copy-right">
				<img
					src="<%=pageContext.getServletContext().getContextPath()%>/images/card.png"
					alt="" />
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<script
		src="<%=pageContext.getServletContext().getContextPath() %>/js/checklogin.js"></script>
	<!--copy-->
</body>
</html>