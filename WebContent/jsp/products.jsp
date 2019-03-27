<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Products</title>
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
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
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
					<a
						href="<%=pageContext.getServletContext().getContextPath()%>/jsp/mailus.jsp">联系我们
						<i class="glyphicon glyphicon-phone" aria-hidden="true"></i>
						199-1762-9837
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
										<font size="2">(我的购物车)</font></div>
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
				<a href="<%=pageContext.getServletContext().getContextPath()%>/jsp/index.jsp">主界面</a> / <span>商品</span>
			</h3>
		</div>
	</div>
	<!--banner-->
	<!--content-->
	<div class="content">
		<div class="products-agileinfo">
			<h2 class="tittle">${gn }</h2>
			<div class="container">
				<font  style="font-weight: bolder;"color="red">${errorId }</font>
				<div class="product-agileinfo-grids w3l">
					<div class="col-md-3 product-agileinfo-grid">
						<div class="categories">
							<h3>种类</h3>
							<ul class="tree-list-pad">
								<li><input type="checkbox" checked="checked" id="item-0" /><label
									for="item-0"><span></span>服装</label>
									<ul>
										<li><a
											href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=上衣">上衣</a></li>
										<li><a
											href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=裤子">裤子</a>

										</li>
										<li><a
											href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=鞋子">鞋子</a>

										</li>
									</ul></li>
								<li><input type="checkbox" checked="checked" id="item-1" /><label
									for="item-1"><span></span>电子产品</label>
									<ul>
										<li><a
											href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=电脑">电脑</a>

										</li>
										<li><a
											href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=电视">电视</a>

										</li>
										<li><a
											href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=手机">手机</a>

										</li>
									</ul></li>
								<li><input type="checkbox" checked="checked" id="item-3" /><label
									for="item-3"><span></span>食品</label>
									<ul>
										<li><a
											href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=零食">零食</a>

										</li>
										<li><a
											href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=饮料">饮料</a>

										</li>

									</ul></li>
								<li><input type="checkbox" checked="checked" id="item-4" /><label
									for="item-4"><span></span>交通工具</label>
									<ul>
										<li><a
											href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=自行车">自行车</a>

										</li>

									</ul></li>
								<li><input type="checkbox" checked="checked" id="item-5" /><label
									for="item-5"><span></span>美妆物品</label>
									<ul>
										<li><a
											href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryKindsGoods.action?gkinds=化妆品">化妆品</a>

										</li>

									</ul></li>
						</div>
						<div class="price">
							<h3>价格范围</h3>
							<ul class="dropdown-menu6">
								<li>
									<div id="slider-range"></div> <input type="text" id="amount"
									style="border: 0; color: #ffffff; font-weight: normal;" />
								</li>
							</ul>
							<script type='text/javascript'>
								//<![CDATA[ 
								$(window)
										.load(
												function() {
													$("#slider-range")
															.slider(
																	{
																		range : true,
																		min : 0,
																		max : 9000,
																		values : [
																				1000,
																				7000 ],
																		slide : function(
																				event,
																				ui) {
																			$(
																					"#amount")
																					.val(
																							"$"
																									+ ui.values[0]
																									+ " - $"
																									+ ui.values[1]);
																		}
																	});
													$("#amount")
															.val(
																	"$"
																			+ $(
																					"#slider-range")
																					.slider(
																							"values",
																							0)
																			+ " - $"
																			+ $(
																					"#slider-range")
																					.slider(
																							"values",
																							1));

												}); //]]>
							</script>
							<script type="text/javascript"
								src="<%=pageContext.getServletContext().getContextPath()%>/js/jquery-ui.js"></script>
						</div>
						<div class="top-rates">
							<h3>热卖产品</h3>
							<div class="recent-grids">
								<div class="recent-left">
									<a href="#"><img class="img-responsive "
										src="<%=pageContext.getServletContext().getContextPath()%>/images/r.jpg"
										alt=""></a>
								</div>
								<div class="recent-right">
									<h6 class="best2">
										<a href="#">森马短袖T恤 </a>
									</h6>
									<p>
										<del>￥100.00</del>
										<em class="item_price">￥90.00</em>
									</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="recent-grids">
								<div class="recent-left">
									<a href="#"><img class="img-responsive "
										src="<%=pageContext.getServletContext().getContextPath()%>/images/r1.jpg"
										alt=""></a>
								</div>
								<div class="recent-right">
									<h6 class="best2">
										<a href="#">休闲女式长裙 </a>
									</h6>
									<p>
										<del>￥160.00</del>
										<em class="item_price">￥19.00</em>
									</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="recent-grids">
								<div class="recent-left">
									<a href="#"><img class="img-responsive "
										src="<%=pageContext.getServletContext().getContextPath()%>/images/r2.jpg"
										alt=""></a>
								</div>
								<div class="recent-right">
									<h6 class="best2">
										<a href="#">仿真鳄鱼皮鞋 </a>
									</h6>
									<p>
										<del>￥230.00</del>
										<em class="item_price">￥39.00</em>
									</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="recent-grids">
								<div class="recent-left">
									<a href="#"><img class="img-responsive "
										src="<%=pageContext.getServletContext().getContextPath()%>/images/r3.jpg"
										alt=""></a>
								</div>
								<div class="recent-right">
									<h6 class="best2">
										<a href="#">帅气西服套装 </a>
									</h6>
									<p>
										<em class="item_price">￥39.00</em>
									</p>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="brand-w3l">
							<h3>品牌排行</h3>
							<ul>
								<li><a href="#">STAGE</a></li>
								<li><a href="#">CLOT潮牌</a></li>
								<li><a href="#">nic is coming </a></li>
								<li><a href="#">CRZ</a></li>
								<li><a href="#">Subcrew</a></li>
								<li><a href="#">thething</a></li>
								<li><a href="#">态度</a></li>
								<li><a href="#">EBLIS HUNGI</a></li>
								<li><a href="#">不死熊猫</a></li>
							</ul>
						</div>
						<div class="cat-img">
							<div class="banner-w3">
								<div class="demo-1">
									<div id="example1" class="core-slider  example_1">
										<div class="core-slider_viewport">
											<div class="core-slider_list">
												<div class="core-slider_item">
													<img
														src="<%=pageContext.getServletContext().getContextPath()%>/images/jiang1.jpg"
														class="img-responsive" alt="">
												</div>
												<div class="core-slider_item">
													<img
														src="<%=pageContext.getServletContext().getContextPath()%>/images/jiang2.jpg"
														class="img-responsive" alt="">
												</div>
												<div class="core-slider_item">
													<img
														src="<%=pageContext.getServletContext().getContextPath()%>/images/jiang3.jpg"
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
						</div>
					</div>
					<div class="col-md-9 product-agileinfon-grid1 w3l">
						<div class="product-agileinfon-top">
							<div class="col-md-6 product-agileinfon-top-left">
								<img class="img-responsive "
									src="<%=pageContext.getServletContext().getContextPath()%>/images/img1.jpg"
									alt="">
							</div>
							<div class="col-md-6 product-agileinfon-top-left">
								<img class="img-responsive "
									src="<%=pageContext.getServletContext().getContextPath()%>/images/img2.jpg"
									alt="">
							</div>
							<div class="clearfix"></div>
						</div>

						<div class="bs-example bs-example-tabs" role="tabpanel"
							data-example-id="togglable-tabs">
							<!--  。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。-->


							<ul id="main">
								<li>价格排序
									<ul class="drop1">
										<div>
											<li>
												<form
													action="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsByPrice.action?flag=1"
													method="post">
													<input type="hidden" name="gkinds" value="${gk }" /> <input
														type="submit" class="btn btn-warning"
														style="background-color: transparent; border: none"
														value="升序" />
												</form>
											</li>
											<li>
												<form
													action="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsByPrice.action?flag=2"
													method="post">
													<input type="hidden" name="gkinds" value="${gk }" /> <input
														type="submit" class="btn btn-warning"
														style="background-color: transparent; border: none"
														value="降序" />
												</form>
											</li>
										</div>
									</ul>
								</li>
							</ul>
							<div class="clearfix"></div>


							<div id="myTabContent" class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active" id="home"
									aria-labelledby="home-tab">

									<c:forEach items="${goods}" var="g" varStatus="s">
										<div class="product-tab">
											<div class="col-md-4 product-tab-grid simpleCart_shelfItem">
												<div class="grid-arr">
													<div class="grid-arrival">
														<figure>
														<dl>
													
															<a
																href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsByKinds.action?gkinds=上衣"
																class="new-gri" data-toggle="modal"
																data-target="#myModal1">
																<div class="grid-img product">
																	<a
																		href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=${g.gid}"><img
																		src="/image/${g.gpicture }" /></a>
																</div>
															</a>

														</dl>
														</figure>

														<div class="block">
															<div class="starbox small ghosting"></div>
														</div>

														<div class="women">
															<h6>
																<a
																	href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=${g.gid}">${g.gname }</a>
															</h6>
															<p>
																<del>￥${g.gmoney+50 }</del>
																<em class="item_price">￥${g.gmoney }</em>
															</p>
															<a
																href="<%=pageContext.getServletContext().getContextPath()%>/goods/queryGoodsById.action?gid=${g.gid}"
																data-text="Add To Cart" class="my-cart-b item_add">立即
																订购</a>
														</div>

													</div>
												</div>
											</div>
										</div>

									</c:forEach>



								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
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