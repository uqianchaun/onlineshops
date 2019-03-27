<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PersonCenter</title>
		<!--css-->
		<link href="<%=pageContext.getServletContext().getContextPath() %>/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<link href="<%=pageContext.getServletContext().getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="<%=pageContext.getServletContext().getContextPath() %>/css/font-awesome.css" rel="stylesheet">
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
		<script src="<%=pageContext.getServletContext().getContextPath() %>/js/jquery.min.js"></script>
		<script src="<%=pageContext.getServletContext().getContextPath() %>/js/jquery-1.11.3.min.js"></script>
		<script src="<%=pageContext.getServletContext().getContextPath() %>/js/Popt.js"></script>
		<script src="<%=pageContext.getServletContext().getContextPath() %>/js/cityJson.js"></script>
		<script src="<%=pageContext.getServletContext().getContextPath() %>/js/citySet.js"></script>
		<link href='https://fonts.googleapis.com/css?family=Cagliostro' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>
		<!--search jQuery-->
		<script src="<%=pageContext.getServletContext().getContextPath() %>/js/main.js"></script>
		<!--search jQuery-->

		<!--mycart-->
		<script type="text/javascript" src="<%=pageContext.getServletContext().getContextPath() %>/js/bootstrap-3.1.1.min.js"></script>
		<!-- cart -->
		<script src="<%=pageContext.getServletContext().getContextPath() %>/js/simpleCart.min.js"></script>
		<!-- cart -->
		<style type="text/css">
		* { -ms-word-wrap: break-word; word-wrap: break-word; }
		html { -webkit-text-size-adjust: none; text-size-adjust: none; }
		html, body {height:100%;width:100%; }
		html, body, h1, h2, h3, h4, h5, h6, div, ul, ol, li, dl, dt, dd, iframe, textarea, input, button, p, strong, b, i, a, span, del, pre, table, tr, th, td, form, fieldset, .pr, .pc { margin: 0; padding: 0; word-wrap: break-word; font-family: verdana,Microsoft YaHei,Tahoma,sans-serif; *font-family: Microsoft YaHei,verdana,Tahoma,sans-serif; }
		body, ul, ol, li, dl, dd, p, h1, h2, h3, h4, h5, h6, form, fieldset, .pr, .pc, em, del { font-style: normal; font-size: 100%; }
		ul, ol, dl { list-style: none; }
		#n{margin:10px auto; width:920px; border:1px solid #CCC;font-size:12px; line-height:30px;}
		#n a{ padding:0 4px; color:#333}
		
		._citys { width: 400px; display: inline-block; border: 2px solid #eee; padding: 5px; position: relative; background-color: white}
		._citys span { color: #56b4f8; height: 15px; width: 15px; line-height: 15px; text-align: center; border-radius: 3px; position: absolute; right: 10px; top: 10px; border: 1px solid #56b4f8; cursor: pointer; }
		._citys0 { width: 100%; height: 34px; display: inline-block; border-bottom: 2px solid #56b4f8; padding: 0; margin: 0; }
		._citys0 li { display: inline-block; line-height: 34px; font-size: 15px; color: #888; width: 80px; text-align: center; cursor: pointer; }
		.citySel { background-color: #56b4f8; color: #00ffff !important; }
		._citys1 { width: 100%; display: inline-block; padding: 10px 0; }
		._citys1 a { width: 83px; height: 35px; display: inline-block; background-color: #f5f5f5; color: #666; margin-left: 6px; margin-top: 3px; line-height: 35px; text-align: center; cursor: pointer; font-size: 13px; overflow: hidden; }
		._citys1 a:hover { color: #00ffff; background-color: #56b4f8; }
		.AreaS { background-color: #56b4f8 !important; color: #00ffff !important; }
</style>
</head>
<body>
<!--header-->
		<div class="header">
			<div class="header-top">
				<div class="container">
					<div class="top-left">
						<font size="3">
							<a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/mailus.jsp">联系我们 <i class="glyphicon glyphicon-phone" aria-hidden="true"></i> 199-1762-9837</a>
					</div>
					<div class="top-right">
						<ul>
							<c:choose>
							<c:when test="${sessionScope.rename!=null }">
								<li><font style="font-weight: bolder;"color="white">欢迎 ${sessionScope.rename}</font></li>
								<li>
								<a href="<%=pageContext.getServletContext().getContextPath() %>/user/personCenter.action?flag=2">个人中心</a>
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
							<font size="6">
									<h1><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/index.jsp">New Shop <span>Shop anywhere</span></a></h1>
							</font>
						</div>
						<div class="logo-nav-left1">
							<nav class="navbar navbar-default">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header nav_2">
									<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
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
								<li>
									&nbsp;&nbsp;&nbsp;
									<a class="cd-search-trigger" href="#cd-search"> <span></span></a>
								</li>
							</ul>
							<!-- cd-header-buttons -->
							<div id="cd-search" class="cd-search">
								<form action="<%=pageContext.getServletContext().getContextPath()%>/goods/queryLikesGoods.action" method="post">
									<input name="dec" type="search" placeholder="Search...">
								</form>
							</div>
						</div>
						</font>
						<div class="header-right2">
							<div class="cart box_1">
								<a href="<%=pageContext.getServletContext().getContextPath()%>/car/queryCar.action">
									<h3> <div class="total">
										<font size="2">(我的购物车)</font></div>
										
										
									</h3>
									<img src="<%=pageContext.getServletContext().getContextPath() %>/images/bag.png" alt="" />
								</a>
								
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
		</div>
		<!--header-->
		<!--banner-->
		<div class="banner1">
			<div class="container">
				<font size="2">
					<h3><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/index.jsp">主界面</a> / <span>收货地址</span></h3>
				</font>
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

						<div class="right1">
							<form action="<%=pageContext.getServletContext().getContextPath() %>/user/updateUser.action?sign=4" name="wanshan" method="post">

								<label style="border-color: #03A9F4; width: 300px;"><font size="5">当前收货地址<font color="red">*</font></font>
								<input type="text"  class="form-control" value="${user.client_address}" name="client_address" placeholder="暂无收货地址" disabled="disabled">
								<div class="clearfix"></div>
								<div class="clearfix"></div></label>

								<label style="border-color: #03A9F4; width: 300px;"><font size="5">更改收货地址<font color="red">*</font></font>
								<input type="text"  class="form-control" id="city" name="client_address" ><script type="text/javascript">
										$("#city").click(function (e) {
											SelCity(this,e);
										});
										</script>
								<div class="clearfix"></div>
								<div class="clearfix"></div></label>
								</br>
								</br>
								</br>
								<!--<label style="border-color: #03A9F4;width: 300px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="#"><font class="tu" size="7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;提交&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></a>-->
								<label style="border-color: #03A9F4;width: 300px;"><input type="submit" width="500px" class="center-block" value="提交" /></label>
							</form>
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
					<img src="<%=pageContext.getServletContext().getContextPath() %>/images/card.png" alt="" />
				</div>
				<div class="clearfix"></div>
			</div>
			</font>
		</div>
		<script src="<%=pageContext.getServletContext().getContextPath() %>/js/checklogin.js"></script>
		<!--copy-->
</body>
</html>