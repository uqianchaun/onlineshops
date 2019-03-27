<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
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
<script
	src="<%=pageContext.getServletContext().getContextPath()%>/js/responsiveslides.min.js"></script>
<script>
	$(function() {
		$("#slider").responsiveSlides({
			auto : true,
			nav : true,
			speed : 500,
			namespace : "callbacks",
			pager : true,
		});
	});
</script>
<style type="text/css">
.div1:hover img{
    display:block; 
		} 
.div1 img{
    display:none; 
		}
</style>
<!--mycart-->
<script type="text/javascript"
	src="<%=pageContext.getServletContext().getContextPath()%>/js/bootstrap-3.1.1.min.js"></script>
<!-- cart -->
<script
	src="<%=pageContext.getServletContext().getContextPath()%>/js/simpleCart.min.js"></script>
<!-- cart -->
<!--start-rate-->
<script
	src="<%=pageContext.getServletContext().getContextPath()%>/js/jstarbox.js"></script>
<link rel="stylesheet" href="css/jstarbox.css" type="text/css"
	media="screen" charset="utf-8" />
<script type="text/javascript">
	jQuery(function() {
		jQuery('.starbox')
				.each(
						function() {
							var starbox = jQuery(this);
							starbox
									.starbox(
											{
												average : starbox
														.attr('data-start-value'),
												changeable : starbox
														.hasClass('unchangeable') ? false
														: starbox
																.hasClass('clickonce') ? 'once'
																: true,
												ghosting : starbox
														.hasClass('ghosting'),
												autoUpdateAverage : starbox
														.hasClass('autoupdate'),
												buttons : starbox
														.hasClass('smooth') ? false
														: starbox
																.attr('data-button-count') || 5,
												stars : starbox
														.attr('data-star-count') || 5
											})
									.bind(
											'starbox-value-changed',
											function(event, value) {
												if (starbox.hasClass('random')) {
													var val = Math.random();
													starbox.next().text(
															' ' + val);
													return val;
												}
											})
						});
	});
</script>
<script>
		//显示图片
		function displayImg() {
			var img = document.getElementById("image");
 
			var x = event.clientX + document.body.scrollLeft + 20;
			var y = event.clientY + document.body.scrollTop - 5; 
 
			img.style.left = x + "px";
			img.style.top = y + "px";
			img.style.display = "block";
		}
 
		//图片消失
		function vanishImg(){
			var img = document.getElementById("image");
			img.style.display = "none";
		}
	</script>

<!--//End-rate-->
</head>
<body>
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="top-left">
					<div class="appfox">
						<a href="#"> 帮助 <i class="glyphicon glyphicon-phone" aria-hidden="true"></i> 199-1762-9837</a>
						&nbsp;</nobr><a href="#" onmouseover="displayImg()" onmouseout="vanishImg()" onmousemove="displayImg()" >下载APP <i class="glyphicon " aria-hidden="true"></i></a>
					
					<div id="image">
					<img class="totop" src="<%=pageContext.getServletContext().getContextPath()%>/img/NewShop.png" alt=""><!--如果加上AJAX就可以根据不同的超链接来显示不同的图片了--></div>
					</div>
					</div>
					<div class="top-right">
					<ul>
						，
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
							<a
								href="<%=pageContext.getServletContext().getContextPath()%>/jsp/index.jsp">New
								Shop <span>Shop anywhere</span>
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
										<font size="2">(我的购物车)</font>
									</div>


									<img
										src="<%=pageContext.getServletContext().getContextPath()%>/images/bag.png"
										alt="" />
								</h3>
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
	<div class="banner-w3">
		<div class="demo-1">
			<div id="example1"
				class="core-slider core-slider__carousel example_1">
				<div class="core-slider_viewport">
					<div class="core-slider_list">
						<div class="core-slider_item">
							<img
								src="<%=pageContext.getServletContext().getContextPath()%>/images/head1.jpg"
								class="img-responsive" alt="">
						</div>
						<div class="core-slider_item">
							<img
								src="<%=pageContext.getServletContext().getContextPath()%>/images/head2.jpg"
								class="img-responsive" alt="">
						</div>
						<div class="core-slider_item">
							<img
								src="<%=pageContext.getServletContext().getContextPath()%>/images/head4.jpg"
								class="img-responsive" alt="">
						</div>
						<div class="core-slider_item">
							<img
								src="<%=pageContext.getServletContext().getContextPath()%>/images/head3.jpg"
								class="img-responsive" alt="">
						</div>
						<div class="core-slider_item">
							<img
								src="<%=pageContext.getServletContext().getContextPath()%>/images/head5.jpg"
								class="img-responsive" alt="">
						</div>
					</div>
				</div>
				<div class="core-slider_nav">
					<div class="core-slider_arrow core-slider_arrow__right"></div>
					<div class="core-slider_arrow core-slider_arrow__left"></div>
				</div>
				<div class="core-slider_control-nav"></div>
			</div>
		</div>
		<link
			href="<%=pageContext.getServletContext().getContextPath()%>/css/coreSlider.css"
			rel="stylesheet" type="text/css">
		<script
			src="<%=pageContext.getServletContext().getContextPath()%>/js/coreSlider.js"></script>
		<script>
			$('#example1').coreSlider({
				pauseOnHover : false,
				interval : 3000,
				controlNavEnabled : true
			});
		</script>

	</div>
	<!--banner-->
	<!--content-->
	<div class="content">
		<!--banner-bottom-->
		<div class="ban-bottom-w3l">
			<div class="container">
				<div class="col-md-6 ban-bottom">
					<div class="ban-top">
						<a
							href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=上衣">
							<img
							src="<%=pageContext.getServletContext().getContextPath()%>/images/p1.jpg"
							class="img-responsive" alt="" />
							<div class="ban-text">
								<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;服装&nbsp;&nbsp;&nbsp;</h4>


							</div>
					</div>
				</div>
				<div class="col-md-6 ban-bottom3">
					<div class="ban-top">
						<a
							href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=电脑">
							<img
							src="<%=pageContext.getServletContext().getContextPath()%>/images/dianzi.jpg"
							class="img-responsive" alt="" />
						</a>
						<div class="ban-text1">
							<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电子产品&nbsp;&nbsp;&nbsp;</h4>
						</div>
					</div>
					<div class="ban-img">
						<div class=" ban-bottom1">
							<div class="ban-top">
								<a
									href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=自行车">
									<img
									src="<%=pageContext.getServletContext().getContextPath()%>/images/jiaotong.jpg"
									class="img-responsive" alt="" />
								</a>
								<div class="ban-text">
									<h4>&nbsp;&nbsp;&nbsp;&nbsp;交通工具&nbsp;&nbsp;&nbsp;</h4>
								</div>
							</div>
						</div>
						<div class="ban-bottom2">
							<div class="ban-top">
								<a
									href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=化妆品">
									<img
									src="<%=pageContext.getServletContext().getContextPath()%>/images/huazhuang.jpg"
									class="img-responsive" alt="" />
								</a>
								<div class="ban-text">
									<h4>&nbsp;&nbsp;&nbsp;&nbsp;化妆用品&nbsp;&nbsp;&nbsp;</h4>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!--banner-bottom-->
		<!--new-arrivals-->
		<div class="new-arrivals-w3agile">
			<div class="container">
				<h2 class="tittle">最新产品</h2>
				<div class="arrivals-grids">
					<div class="col-md-3 arrival-grid simpleCart_shelfItem">
						<div class="grid-arr">
							<div class="grid-arrival">
								<figure> <a
									href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=10">
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/9-1.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/9-2.jpg"
											class="img-responsive" alt="">
									</div>
								</a> </figure>
							</div>

							<div class="block">
								<div class="starbox small ghosting"></div>
							</div>
							<div class="women">
								<h6>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=10">北极绒风衣</a>
								</h6>
								<p>
									<del>￥169.00</del>
									<em class="item_price">￥119.00</em>
								</p>
								<center>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=10"
										data-text="Add To Cart" class="my-cart-b">立即&nbsp;&nbsp;订购</a>
								</center>
							</div>
						</div>
					</div>
					<div class="col-md-3 arrival-grid simpleCart_shelfItem">
						<div class="grid-arr">
							<div class="grid-arrival">
								<figure> <a
									href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=11">
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/10-1.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/10-2.jpg"
											class="img-responsive" alt="">
									</div>
								</a> </figure>
							</div>

							<div class="block">
								<div class="starbox small ghosting"></div>
							</div>
							<div class="women">
								<h6>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=11">冬季加厚毛呢风衣</a>
								</h6>
								<p>
									<del>￥210.00</del>
									<em class="item_price">￥199.00</em>
								</p>
								<center>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=11"
										data-text="Add To Cart" class="my-cart-b">立即&nbsp;&nbsp;订购</a>
								</center>
							</div>
						</div>
					</div>
					<div class="col-md-3 arrival-grid simpleCart_shelfItem">
						<div class="grid-arr">
							<div class="grid-arrival">
								<figure> <a
									href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=12">
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/11.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/11-2.jpg"
											class="img-responsive" alt="">
									</div>
								</a> </figure>
							</div>

							<div class="block">
								<div class="starbox small ghosting"></div>
							</div>
							<div class="women">
								<h6>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=12">跟斗小猪风衣</a>
								</h6>
								<p>
									<del>￥145.00</del>
									<em class="item_price">￥128.00</em>
								</p>
								<center>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=12"
										data-text="Add To Cart" class="my-cart-b">立即&nbsp;&nbsp;订购</a>
								</center>
							</div>
						</div>
					</div>
					<div class="col-md-3 arrival-grid simpleCart_shelfItem">
						<div class="grid-arr">
							<div class="grid-arrival">
								<figure> <a
									href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=14">
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/12-1.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/12-2.jpg"
											class="img-responsive" alt="">
									</div>
								</a> </figure>
							</div>

							<div class="block">
								<div class="starbox small ghosting"></div>
							</div>
							<div class="women">
								<h6>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=14">防晒衣男女透气</a>
								</h6>
								<p>
									<del>￥199.00</del>
									<em class="item_price">￥99.00</em>
								</p>
								<center>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=14"
										data-text="Add To Cart" class="my-cart-b">立即&nbsp;&nbsp;订购</a>
								</center>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!--new-arrivals-->
		<!--accessories-->
		<div class="accessories-w3l">
			<div class="container">
				<h3 class="tittle">最高可减20%！</h3>
				<span>畅想折扣</span>
				<div class="button">
					<a
						href="<%=pageContext.getServletContext().getContextPath()%>/car/queryCar.action"
						class="button1"> 即刻订购</a> <a
						href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=上衣"
						class="button1"> 快速浏览</a>
				</div>
			</div>
		</div>
		<!--accessories-->
		<!--Products-->
		<div class="product-agile">
			<div class="container">
				<h3 class="tittle1">新品热卖</h3>
				<div class="slider">
					<div class="callbacks_container">
						<ul class="rslides" id="slider">
							<li>
								<div class="caption">
									<div class="col-md-3 cap-left simpleCart_shelfItem">
										<div class="grid-arr">
											<div class="grid-arrival">
												<figure> <a
													href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=77">
													<div class="grid-img">
														<img
															src="<%=pageContext.getServletContext().getContextPath()%>/images/5-1.jpg"
															class="img-responsive" alt="">
													</div>
													<div class="grid-img">
														<img
															src="<%=pageContext.getServletContext().getContextPath()%>/images/5-2.jpg"
															class="img-responsive" alt="">
													</div>
												</a> </figure>
											</div>
											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<div class="women">
												<h6>
													<a
														href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=77">小米电视4C</a>
												</h6>
												<p>
													<del>￥2199.00</del>
													<em class="item_price">￥1899.00</em>
												</p>
												<center>
													<a
														href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=77"
														data-text="Add To Cart" class="my-cart-b">立即&nbsp;&nbsp;订购</a>
												</center>
											</div>
										</div>
									</div>
									<div class="col-md-3 cap-left simpleCart_shelfItem">
										<div class="grid-arr">
											<div class="grid-arrival">
												<figure> <a
													href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=81">
													<div class="grid-img">
														<img
															src="<%=pageContext.getServletContext().getContextPath()%>/images/6-1.jpg"
															class="img-responsive" alt="">
													</div>
													<div class="grid-img">
														<img
															src="<%=pageContext.getServletContext().getContextPath()%>/images/6-2.jpg"
															class="img-responsive" alt="">
													</div>
												</a> </figure>
											</div>

											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<div class="women">
												<h6>
													<a
														href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=81">曲面HDR超薄电视机</a>
												</h6>
												<p>
													<del>￥2999.00</del>
													<em class="item_price">￥2588.00</em>
												</p>
												<center>
													<a
														href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=81"
														data-text="Add To Cart" class="my-cart-b">立即&nbsp;&nbsp;订购</a>
												</center>
											</div>
										</div>
									</div>
									<div class="col-md-3 cap-left simpleCart_shelfItem">
										<div class="grid-arr">
											<div class="grid-arrival">
												<figure> <a
													href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=84">
													<div class="grid-img">
														<img
															src="<%=pageContext.getServletContext().getContextPath()%>/images/7-1.jpg"
															class="img-responsive" alt="">
													</div>
													<div class="grid-img">
														<img
															src="<%=pageContext.getServletContext().getContextPath()%>/images/7-2.jpg"
															class="img-responsive" alt="">
													</div>
												</a> </figure>
											</div>

											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<div class="women">
												<h6>
													<a
														href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=84">康佳LED49UC3</a>
												</h6>
												<p>
													<del>￥2799.00</del>
													<em class="item_price">￥2599.00</em>
												</p>
												<center>
													<a
														href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=84"
														data-text="Add To Cart" class="my-cart-b">立即&nbsp;&nbsp;订购</a>
												</center>
											</div>
										</div>
									</div>
									<div class="col-md-3 cap-left simpleCart_shelfItem">
										<div class="grid-arr">
											<div class="grid-arrival">
												<figure> <a
													href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=82">
													<div class="grid-img">
														<img
															src="<%=pageContext.getServletContext().getContextPath()%>/images/8-1.jpg"
															class="img-responsive" alt="">
													</div>
													<div class="grid-img">
														<img
															src="<%=pageContext.getServletContext().getContextPath()%>/images/8-2.jpg"
															class="img-responsive" alt="">
													</div>
												</a> </figure>
											</div>
											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<div class="women">
												<h6>
													<a
														href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=82">TCL34核原色量子点</a>
												</h6>

												<p>
													<del>￥8699.00</del>
													<em class="item_price">￥7687.00</em>
												</p>
												<center>
													<a
														href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=82"
														data-text="Add To Cart" class="my-cart-b">立即&nbsp;&nbsp;订购</a>
												</center>
											</div>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--Products-->
		<div class="new-arrivals-w3agile">
			<div class="container">
				<h3 class="tittle1">火爆热卖</h3>
				<div class="arrivals-grids">
					<div class="col-md-3 arrival-grid simpleCart_shelfItem">
						<div class="grid-arr">
							<div class="grid-arrival">
								<figure> <a
									href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=157">
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/16-1.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/16-2.jpg"
											class="img-responsive" alt="">
									</div>
								</a> </figure>
							</div>

							<div class="block">
								<div class="starbox small ghosting"></div>
							</div>
							<div class="women">
								<h6>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=157">法国兰蔻化妆品组合</a>
								</h6>
								<p>
									<del>￥1099.00</del>
									<em class="item_price">￥918.00</em>
								</p>
								<center>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=157"
										data-text="Add To Cart" class="my-cart-b">立即&nbsp;&nbsp;订购</a>
								</center>
							</div>
						</div>
					</div>
					<div class="col-md-3 arrival-grid simpleCart_shelfItem">
						<div class="grid-arr">
							<div class="grid-arrival">
								<figure> <a
									href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=65">
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/18-1.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/18-2.jpg"
											class="img-responsive" alt="">
									</div>
								</a> </figure>
							</div>

							<div class="block">
								<div class="starbox small ghosting"></div>
							</div>
							<div class="women">
								<h6>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=65">vivoNEX全面屏手机</a>
								</h6>

								<p>
									<del>￥4299.00</del>
									<em class="item_price">￥3898.00</em>
								</p>
								<center>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=65"
										data-text="Add To Cart" class="my-cart-b">立即&nbsp;&nbsp;订购</a>
								</center>
							</div>
						</div>
					</div>
					<div class="col-md-3 arrival-grid simpleCart_shelfItem">
						<div class="grid-arr">
							<div class="grid-arrival">
								<figure> <a
									href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=164">
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/17-1.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/17-2.jpg"
											class="img-responsive" alt="">
									</div>
								</a> </figure>
							</div>

							<div class="block">
								<div class="starbox small ghosting"></div>
							</div>
							<div class="women">
								<h6>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=164">科颜氏高保湿霜</a>
								</h6>

								<p>
									<del>￥499.00</del>
									<em class="item_price">￥400.00</em>
								</p>
								<center>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=164"
										data-text="Add To Cart" class="my-cart-b">立即&nbsp;&nbsp;订购</a>
								</center>
							</div>
						</div>
					</div>
					<div class="col-md-3 arrival-grid simpleCart_shelfItem">
						<div class="grid-arr">
							<div class="grid-arrival">
								<figure> <a
									href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=71">
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/14-1.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="grid-img">
										<img
											src="<%=pageContext.getServletContext().getContextPath()%>/images/14-2.jpg"
											class="img-responsive" alt="">
									</div>
								</a> </figure>
							</div>

							<div class="block">
								<div class="starbox small ghosting"></div>
							</div>
							<div class="women">
								<h6>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=71">小米8SE</a>
								</h6>

								<p>
									<del>￥1999.00</del>
									<em class="item_price">￥1799.00</em>
								</p>
								<center>
									<a
										href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=71"
										data-text="Add To Cart" class="my-cart-b">立即&nbsp;&nbsp;订购</a>
								</center>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!--new-arrivals-->
	</div>
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
			<div class="copy-left"></div>
			<div class="copy-right">
				<img
					src="<%=pageContext.getServletContext().getContextPath()%>/images/card.png"
					alt="" />
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--copy-->

</body>
</html>