<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Review</title>
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
<script type="text/javascript"
	src="<%=pageContext.getServletContext().getContextPath()%>/js/bootstrap-3.1.1.min.js"></script>
<!-- cart -->
<script
	src="<%=pageContext.getServletContext().getContextPath()%>/js/simpleCart.min.js"></script>
<!-- cart -->
<script defer
	src="<%=pageContext.getServletContext().getContextPath()%>/js/jquery.flexslider.js"></script>
<link rel="stylesheet"
	href="<%=pageContext.getServletContext().getContextPath()%>/css/flexslider.css"
	type="text/css" media="screen" />
<script
	src="<%=pageContext.getServletContext().getContextPath()%>/js/imagezoom.js"></script>
<script>
	// Can also be used with $(document).ready()
	$(window).load(function() {
		$('.flexslider').flexslider({
			animation : "slide",
			controlNav : "thumbnails"
		});
	});
</script>

<!--mycart-->
<!--start-rate-->
<script
	src="<%=pageContext.getServletContext().getContextPath()%>/js/jstarbox.js"></script>
<link rel="stylesheet"
	href="<%=pageContext.getServletContext().getContextPath()%>/css/jstarbox.css"
	type="text/css" media="screen" charset="utf-8" />
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
<!--//End-rate-->
<link
	href="<%=pageContext.getServletContext().getContextPath()%>/css/owl.carousel.css"
	rel="stylesheet">
<script
	src="<%=pageContext.getServletContext().getContextPath()%>/js/owl.carousel.js"></script>
<script>
	$(document).ready(function() {
		$("#owl-demo").owlCarousel({
			items : 1,
			lazyLoad : true,
			autoPlay : true,
			navigation : false,
			navigationText : false,
			pagination : true,
		});
	});
</script>
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="top-left">
					<a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/mailus.jsp">联系我们<i class="glyphicon glyphicon-phone"
						aria-hidden="true"></i> 199-1762-9837
					</a>
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
	
	<div class="banner1">
		<div class="container">
			<h3>
				<a
					href="<%=pageContext.getServletContext().getContextPath()%>/jsp/index.jsp">主界面</a>
				/ <span>商品描述</span>
			</h3>
		</div>
	</div>
	<!--banner-->

	<!--content-->
	<div class="content">
		<!--single-->
		<div class="single-wl3">
			<div class="container">
				<div class="single-grids">
					<div class="col-md-9 single-grid">
						<div clas="single-top">
							<div class="single-left">
								<div class="flexslider">
									<ul class="slides">

										<!--添加图片1-->
<!-- 										<li data-thumb="images/si.jpg"> -->
											<div class="thumb-image">
												<img
													src="/image/${goods.gpicture }"
													data-imagezoom="true" class="img-responsive">
											</div>
<!-- 										</li> -->

									</ul>
								</div>
							</div>
							<div class="single-right simpleCart_shelfItem">
								<form action="<%=pageContext.getServletContext().getContextPath() %>/car/insertCar.action" name="gouwu" method="post">
									<h4>${goods.gname }</h4>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<p class="price item_price">￥ ${goods.gmoney }</p>
									<div class="description">
										<span>商品概述 : </span> ${goods.descript }
									</div>
									<div class="color-quality">
									   <h5>商品剩余量： ${goods.gnumber }</h5>
										<h6>数量 :</h6>
										<input type="hidden" name="g_number" value="1" />
										<input type="hidden" name="gid" value="${goods.gid}"/>
										<div class="quantity">
											<div class="quantity-select">
												<div class="entry value-minus1">&nbsp;</div>
												<div class="entry value1"><span>1</span></div>
												<div class="entry value-plus1 active">&nbsp;</div>
											</div>
										</div>
											<input type="hidden" name="number1" value="${goods.gnumber }">
										<!--quantity-->
										<script>
											$('.value-plus1').on('click', function() {
												var quality = document.getElementsByName("g_number")[0].value;
												var divUpd = $(this).parent().find('.value1'),
													quality = parseInt(divUpd.text(), 10) + 1;
												divUpd.text(quality);
												var number=document.getElementsByName("number1")[0].value;
											
												
												if(quality <number) divUpd.text(quality);
												document.getElementsByName("g_number")[0].value = quality;
												
												
											});

											$('.value-minus1').on('click', function() {
												var quality = document.getElementsByName("g_number")[0].value;
												var divUpd = $(this).parent().find('.value1'),
													quality = parseInt(divUpd.text(), 10) - 1;
												if(quality >= 1) divUpd.text(quality);
											
												document.getElementsByName("g_number")[0].value = quality;
												
											});
											
										</script>
										<!--quantity-->
									</div>
									
									<div class="women">
										<input type="submit" data-text="Add To Cart" class="my-cart-b item_add" value="加入购物车" />
										<!--<a href="#" data-text="Add To Cart" class="my-cart-b item_add">加入购物车</a>-->
									</div>
									</form>
								<div class="social-icon">
									<a href="https://connect.qq.com/widget/shareqq/index.html?summary=http%3A%2F%2Fge16488864.icoc.bz%2F%3F_sc%3D1&url=http%3A%2F%2Fge16488864.icoc.bz%2F&pics=&title=%E3%80%90xc.context%E3%80%91"><i class="icon"></i></a> <a href="https://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?summary=http%3A%2F%2Fge16488864.icoc.bz%2F%3F_sc%3D1&url=http%3A%2F%2Fge16488864.icoc.bz%2F&pics=&title=%E3%80%90xc.context%E3%80%91"><i
										class="icon1"></i></a> <a href="http://service.weibo.com/share/share.php?title=%E3%80%90xc.context%E3%80%91http%3A%2F%2Fge16488864.icoc.bz%2F%3F_sc%3D1&url=http%3A%2F%2Fge16488864.icoc.bz%2F&pic=#_loginLayer_1532441825651"><i class="icon2"></i></a> <a
										href="http://tieba.baidu.com/f/commit/share/openShareApi?url=&comment=&pic=&url=http%3A%2F%2Fge16488864.icoc.bz%2FshareUrl.jsp%3FurlRdKey%3D&title=%E3%80%90xc.context%E3%80%91http%3A%2F%2Fge16488864.icoc.bz%2F%3F_sc%3D1"><i class="icon3"></i></a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="col-md-3 single-grid1">
						<h3>最近浏览</h3>
						<div class="recent-grids">
							<div class="recent-left">
								<a href="#"><img class="img-responsive "
									src="<%=pageContext.getServletContext().getContextPath()%>/images/5-1.jpg"
									alt=""></a>
							</div>
							<div class="recent-right">
								<h6 class="best2">
									<a href="#">小米佳能电视 </a>
								</h6>
								<div class="block">
									<div class="starbox small ghosting"></div>
								</div>
								<span class=" price-in1"> ￥ 2239.00</span>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="recent-grids">
							<div class="recent-left">
								<a href="#"><img class="img-responsive "
									src="<%=pageContext.getServletContext().getContextPath()%>/images/18-1.jpg"
									alt=""></a>
							</div>
							<div class="recent-right">
								<h6 class="best2">
									<a href="#">华为荣耀10 </a>
								</h6>
								<div class="block">
									<div class="starbox small ghosting"></div>
								</div>
								<span class=" price-in1"> ￥ 2599.00</span>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="recent-grids">
							<div class="recent-left">
								<a href="#"><img class="img-responsive "
									src="<%=pageContext.getServletContext().getContextPath()%>/images/p9.jpg"
									alt=""></a>
							</div>
							<div class="recent-right">
								<h6 class="best2">
									<a href="#">猎豹男士T恤 </a>
								</h6>
								<div class="block">
									<div class="starbox small ghosting"></div>
								</div>
								<span class=" price-in1"> ￥ 319.00</span>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="recent-grids">
							<div class="recent-left">
								<a href="#"><img class="img-responsive "
									src="<%=pageContext.getServletContext().getContextPath()%>/images/p29.jpg"
									alt=""></a>
							</div>
							<div class="recent-right">
								<h6 class="best2">
									<a href="#">瑞士男士精工腕表 </a>
								</h6>
								<div class="block">
									<div class="starbox small ghosting"></div>
								</div>
								<span class=" price-in1">￥ 8645.00</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<!--Product Description-->
				<div class="product-w3agile">
					<h3 class="tittle1">商品评价</h3>
					<div class="product-grids">
						<div class="col-md-4 product-grid">
							<div id="owl-demo" class="owl-carousel">
								<div class="item">
									<div class="recent-grids">
										<div class="recent-left">
											<a href="#"><img class="img-responsive "
												src="<%=pageContext.getServletContext().getContextPath()%>/images/5-2.jpg"
												alt=""></a>
										</div>
										<div class="recent-right">
											<h6 class="best2">
												<a href="#">小米佳能电视 </a>
											</h6>
											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<span class=" price-in1"> ￥ 2239.00</span>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="recent-grids">
										<div class="recent-left">
											<a href="#"><img class="img-responsive "
												src="<%=pageContext.getServletContext().getContextPath()%>/images/18-2.jpg"
												alt=""></a>
										</div>
										<div class="recent-right">
											<h6 class="best2">
												<a href="#">华为荣耀10 </a>
											</h6>
											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<span class=" price-in1"> ￥ 2599.00</span>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="recent-grids">
										<div class="recent-left">
											<a href="#"><img class="img-responsive "
												src="<%=pageContext.getServletContext().getContextPath()%>/images/p9.jpg"
												alt=""></a>
										</div>
										<div class="recent-right">
											<h6 class="best2">
												<a href="#">猎豹男士T恤 </a>
											</h6>
											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<span class=" price-in1"> ￥ 319.00</span>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="recent-grids">
										<div class="recent-left">
											<a href="#"><img class="img-responsive "
												src="<%=pageContext.getServletContext().getContextPath()%>/images/p29.jpg"
												alt=""></a>
										</div>
										<div class="recent-right">
											<h6 class="best2">
												<a href="#">瑞士男士精工腕表 </a>
											</h6>
											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<span class=" price-in1">￥ 8645.00</span>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="item">
									<div class="recent-grids">
										<div class="recent-left">
											<a href="#"><img class="img-responsive "
												src="<%=pageContext.getServletContext().getContextPath()%>/images/r4.jpg"
												alt=""></a>
										</div>
										<div class="recent-right">
											<h6 class="best2">
												<a href="#">理查德女式腕表 </a>
											</h6>
											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<span class=" price-in1"> ￥ 6529.00</span>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="recent-grids">
										<div class="recent-left">
											<a href="#"><img class="img-responsive "
												src="<%=pageContext.getServletContext().getContextPath()%>/images/11.jpg"
												alt=""></a>
										</div>
										<div class="recent-right">
											<h6 class="best2">
												<a href="#">防晒透气风衣男 </a>
											</h6>
											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<span class=" price-in1"> ￥ 69.00</span>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="recent-grids">
										<div class="recent-left">
											<a href="#"><img class="img-responsive "
												src="<%=pageContext.getServletContext().getContextPath()%>/images/i5.jpg"
												alt=""></a>
										</div>
										<div class="recent-right">
											<h6 class="best2">
												<a href="#">左罗德女士凉鞋</a>
											</h6>
											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<span class=" price-in1"> ￥ 619.00</span>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="recent-grids">
										<div class="recent-left">
											<a href="#"><img class="img-responsive "
												src="<%=pageContext.getServletContext().getContextPath()%>/images/i4.jpg"
												alt=""></a>
										</div>
										<div class="recent-right">
											<h6 class="best2">
												<a href="#">香奈儿女士挎包</a>
											</h6>
											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<span class=" price-in1">￥ 1495.00</span>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<img class="img-responsive "
								src="<%=pageContext.getServletContext().getContextPath()%>/images/woo2.jpg"
								alt="">
						</div>
						<div class="col-md-8 product-grid1">
							<div class="tab-wl3">
								<div class="bs-example bs-example-tabs" role="tabpanel"
									data-example-id="togglable-tabs">
									<div class="descr">
												<div class="reviews-top">
													<div class="reviews-left">
														<img
															src="<%=pageContext.getServletContext().getContextPath()%>/images/men3.jpg"
															alt=" " class="img-responsive">
													</div>
													
													<div class="clearfix"></div>
												</div>
												<div class="reviews-bottom">
													<h4>添加回复</h4>
													<p>您的联系方式不会被公开。 必需的地方已做标记 *</p>
													<p>您的评价</p>
													<div class="block">
														<div class="starbox small ghosting">
															<div class="positioner">
																<div class="stars">
																	<div class="ghost"
																		style="width: 42.5px; display: none;"></div>
																	<div class="colorbar" style="width: 42.5px;"></div>
																	<div class="star_holder">
																		<div class="star star-0"></div>
																		<div class="star star-1"></div>
																		<div class="star star-2"></div>
																		<div class="star star-3"></div>
																		<div class="star star-4"></div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<form action="<%=pageContext.getServletContext().getContextPath()%>/review/addReviews.action" method="post">
														<label>您的评论 </label>
														<textarea type="text" name="reviews"
															onfocus="this.value = '';"
															onblur="if (this.value == '') {this.value = '请输入评论...';}"
															required="">请输入评论...</textarea>
														<div class="row">
															
															<input type="hidden" name="gid" value="${goods.gid }"/>
															<div class="clearfix"></div>
														</div>
														<input type="submit" value="发送">
													</form>
												</div>
											</div>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!--Product Description-->
			</div>
		</div>
		<!--single-->
		<div class="new-arrivals-w3agile">
			<div class="container"></div>
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
		<!--copy-->
</body>
</html>