<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>百匠企管 - 为您服务</title>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1" />
	<link rel="shortcut icon" href="<c:url value="/favicon.ico"/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/css/animate.css"/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/css/font-awesome.min.css"/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/css/owl.theme.css"/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/css/owl.carousel.css"/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/css/prettyPhoto.css"/>" />
	<!-- Main css -->
	<link type="text/css" rel="stylesheet" href="<c:url value="/css/style.css"/>" />
	<!-- Google Font 
	<link href='https://fonts.googleapis.com/css?family=Poppins:400,500,600' rel='stylesheet' type='text/css' />
	-->
</head>
<body data-spy="scroll" data-offset="50" data-target=".navbar-collapse">
	<!-- PRE LOADER -->
	<div class="preloader">
		<div class="sk-rotating-plane"></div>
	</div>
	<!-- NAVIGATION LINKS -->
	<div class="navbar navbar-fixed-top custom-navbar" role="navigation">
		<div class="container">
			<!-- navbar header -->
			<div class="navbar-header">
				<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon icon-bar"></span>
					<span class="icon icon-bar"></span>
					<span class="icon icon-bar"></span>
				</button>
				<a class="navbar-brand" href="javascript:void(0);">
					<img src="<c:url value="/images/logo-1.png"/>" alt="" />
				</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" data-sect="#home" class="">首页</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-sect="#overview" data-toggle="dropdown">工商服务</a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value="/app/cms/topic?id=zcgs"/>">注册公司</a></li>
							<li><a href="<c:url value="/app/cms/topic?id=dljz"/>">代理记账</a></li>
							<li><a href="<c:url value="/app/cms/topic?id=cwzx"/>">财务咨询</a></li>
							<li><a href="<c:url value="/app/cms/topic?id=gsbg"/>">工商变更</a></li>
							<li><a href="<c:url value="/app/cms/topic?id=gszx"/>">公司注销</a></li>
							<li><a href="<c:url value="/app/cms/topic?id=rsdl"/>">人事代理</a></li>
							<li><a href="<c:url value="/app/cms/topic?id=sbzc"/>">商标注册</a></li>
							<li><a href="<c:url value="/app/cms/topic?id=zzdb"/>">资质代办</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-sect="#detail" data-toggle="dropdown">关于百匠</a>
						<ul class="dropdown-menu" style="background-color:grey;">
							<li><a href="<c:url value="/app/cms/topic1?id=gsjs"/>">公司介绍</a></li>
							<li><a href="<c:url value="/app/cms/topic1?id=tdjs"/>">团队介绍</a></li>
							<li><a href="<c:url value="/app/cms/topic1?id=qyxx"/>">企业形象</a></li>
							<li><a href="<c:url value="/app/cms/topic1?id=ywjs"/>">业务介绍</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-sect="#detail" data-toggle="dropdown">知识产权</a>
						<ul class="dropdown-menu" style="background-color:grey;">
							<li><a href="<c:url value="/app/cms/topic2?id=logosj"/>">LOGO设计</a></li>
							<li><a href="<c:url value="/app/cms/topic2?id=qyxcpzz"/>">企业宣传片制作</a></li>
							<li><a href="<c:url value="/app/cms/topic2?id=zlfw"/>">专利服务</a></li>
							<li><a href="<c:url value="/app/cms/topic2?id=bqfw"/>">版权服务</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-sect="#detail" data-toggle="dropdown">信息咨询</a>
						<ul class="dropdown-menu" style="background-color:grey;">
							<li><a href="<c:url value="/app/cms/topic3?id=mhkf"/>">门户开发</a></li>
							<li><a href="<c:url value="/app/cms/topic3?id=appzz"/>">APP制作</a></li>
							<li><a href="<c:url value="/app/cms/topic3?id=xtwh"/>">系统维护</a></li>
							<li><a href="<c:url value="/app/cms/topic3?id=qyxxh"/>">企业信息化</a></li>
						</ul>
					</li>
					<li><a href="#" class="" data-sect="#contact">联系我们</a></li>
					<c:if test="${empty sessionScope.userInfo}">
						<li id="btnLoginTrig"><a href="javascript:void(0);" data-toggle="modal" data-target="#login-frm">登录</a></li>
						<li id="btnRegTrig"><a href="javascript:void(0);" data-toggle="modal" data-target="#register-frm">注册</a></li>
					</c:if>
					<c:if test="${not empty sessionScope.userInfo}">
						<li id="btnLogoutTrig"><a id="btnLogout" href="javascript:void(0);">用户退出</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	<!-- INTRO SECTION -->
	<!--<section id="intro" class="parallax-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<h1 class="wow fadeInUp" data-wow-delay="0.9s"><c:out value="${appCmsHomePagePb.strHomeMainTitle}"/></h1>
					<h3 class="wow bounceIn" data-wow-delay="1.6s"><c:out value="${appCmsHomePagePb.strHomeMainBanner}"/></h3>
					<a href="javascript:void(0);" class="btn btn-lg btn-default smoothScroll wow fadeInUp hidden-xs" data-toggle="modal" data-target="#login-frm" data-wow-delay="2.3s">用户登录</a>&nbsp;<a href="javascript:void(0);" class="btn btn-lg btn-danger smoothScroll wow fadeInUp" data-toggle="modal" data-target="#register-frm" data-wow-delay="2.3s">用户注册</a>
				</div>
			</div>
		</div>
	</section>-->
	<!-- HOME -->
	<section id="home" class="parallax-section">
		<div class="row">
			<div class="owl-carousel owl-theme home-slider">
				<div class="item item-first">
					<div class="caption">
						<div class="container">
							<div class="col-md-6 col-sm-12">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- OVERVIEW SECTION -->
	<section id="overview" class="parallax-section">
		<div class="container">
			<div class="row">
				<div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="0.6s">
					<h3>我们的优质服务</h3>
					<p>${appCmsHomePagePb.txtHomeYzfuSubtitle}</p>
					${appCmsHomePagePb.txtHomeYzfuParagraph}
				</div>
				<div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="0.9s">
					<img src="${appCmsHomePagePb.srcHomeYzfuPic}" class="img-responsive" style="padding:75px 0 0 0;" alt="Overview" />
				</div>
			</div>
			<br/><br/>
			<div class="row">
				<div class="col-lg-12">
					<div class="wow fadeInUp row" data-wow-delay="0.6s">
						<div class="col-sm-3 col-md-3 col-lg-3">
							<div class="box">
								<div class="aligncenter">
									<div class="icon">
										<a href="<c:url value="/app/cms/topic?id=zcgs"/>"><img src="<c:url value="/images/ico_zcgs.png"/>" alt="img" /></a>
									</div>
									<h4>注册公司</h4>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-md-3 col-lg-3">
							<div class="box">
								<div class="aligncenter">
									<div class="icon">
										<a href="<c:url value="/app/cms/topic?id=dljz"/>"><img src="<c:url value="/images/ico_dljz.png"/>" alt="img" /></a>
									</div>
									<h4>代理记账</h4>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-md-3 col-lg-3">
							<div class="box">
								<div class="aligncenter">
									<div class="icon">
										<a href="<c:url value="/app/cms/topic?id=cwzx"/>"><img src="<c:url value="/images/ico_gskz.png"/>" alt="img" /></a>
									</div>
									<h4>财务咨询</h4>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-md-3 col-lg-3">
							<div class="box">
								<div class="aligncenter">
									<div class="icon">
										<a href="<c:url value="/app/cms/topic?id=gsbg"/>"><img src="<c:url value="/images/ico_gsbg.png"/>" alt="img" /></a>
									</div>
									<h4>工商变更</h4>
								</div>
							</div>
						</div>
					</div>
					<br/><br/>
					<div class="wow fadeInUp row" data-wow-delay="0.9s">
						<div class="col-sm-3 col-md-3 col-lg-3">
							<div class="box">
								<div class="aligncenter">
									<div class="icon">
										<a href="<c:url value="/app/cms/topic?id=gszx"/>"><img src="<c:url value="/images/ico_gszx.png"/>" alt="img" /></a>
									</div>
									<h4>公司注销</h4>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-md-3 col-lg-3">
							<div class="box">
								<div class="aligncenter">
									<div class="icon">
										<a href="<c:url value="/app/cms/topic?id=rsdl"/>"><img src="<c:url value="/images/ico_sbdl.png"/>" alt="img" /></a>
									</div>
									<h4>人事代理</h4>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-md-3 col-lg-3">
							<div class="box">
								<div class="aligncenter">
									<div class="icon">
										<a href="<c:url value="/app/cms/topic?id=sbzc"/>"><img src="<c:url value="/images/ico_sbzc.png"/>" alt="img" /></a>
									</div>
									<h4>商标注册</h4>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-md-3 col-lg-3">
							<div class="box">
								<div class="aligncenter">
									<div class="icon">
										<a href="<c:url value="/app/cms/topic?id=zzdb"/>"><img src="<c:url value="/images/ico_zzdb.png"/>" alt="img" /></a>
									</div>
									<h4>资质代办</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- DETAIL SECTION -->
	<section id="detail" class="parallax-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 wow bounceIn">
					<div class="section-title">
						<h3>关于百匠</h3>
						<p>了解关于百匠主体业务和范围</p>
					</div>
				</div>
				<div class="wow fadeInLeft col-sm-3 col-md-3 col-lg-3" data-wow-delay="0.3s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<div class="img-zoom-wrap"><a href="<c:url value="/app/cms/topic1?id=gsjs"/>"><img src="<c:url value="/img/portfolio/01-small.jpg"/>" alt=""></a></div>
						</div>
					</div>
				</div>
				<div class="wow fadeInLeft col-sm-3 col-md-3 col-lg-3" data-wow-delay="0.6s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<div class="img-zoom-wrap"><a href="<c:url value="/app/cms/topic1?id=tdjs"/>"><img src="<c:url value="/img/portfolio/02-small.jpg"/>" alt=""></a></div>
						</div>
					</div>
				</div>
				<div class="wow fadeInLeft col-sm-3 col-md-3 col-lg-3" data-wow-delay="0.9s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<div class="img-zoom-wrap"><a href="<c:url value="/app/cms/topic1?id=qyxx"/>"><img src="<c:url value="/img/portfolio/03-small.jpg"/>" alt=""></a></div>
						</div>
					</div>
				</div>
				<div class="wow fadeInLeft col-sm-3 col-md-3 col-lg-3" data-wow-delay="1.2s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<div class="img-zoom-wrap"><a href="<c:url value="/app/cms/topic1?id=ywjs"/>"><img src="<c:url value="/img/portfolio/04-small.jpg"/>" alt=""></a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- SPEAKERS SECTION -->
	<section id="speakers" class="parallax-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 wow bounceIn">
					<div class="section-title">
						<h3>定制专属您的行业解决方案</h3>
						<p>开公司难免要缴税  百匠为您分忧解难</p>
					</div>
				</div>
				<!-- Testimonial Owl Carousel section -->
				<div id="owl-speakers" class="owl-carousel">
					<c:forEach items="${appCmsHomePagePb.custSolus}" var="custSolu" varStatus="loop">
						<div class="item wow fadeInUp col-md-3 col-sm-3" data-wow-delay="${0.6 + loop.index*0.3}s">
							<div class="speakers-wrapper">
								<p style="padding:10px 0 0 0;"><b>${custSolu.title}</b></p>
								<a href="javascript:void(0);"><img src="${custSolu.imgUrl}" class="img-responsive" alt="speakers" /></a>
								<div class="speakers-thumb">
									${custSolu.content}
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	<!-- SPONSORS SECTION -->
	<section id="sponsors" class="parallax-section">
		<div class="container">
			<div class="row">
				<div class="wow bounceIn col-md-12 col-sm-12">
					<div class="section-title">
						<h3>百匠企业资质</h3>
						<p>20年，累计获得殊荣百余项，始终秉持与中小企业共同成长的理念。</p>
					</div>
				</div>
				<div class="wow fadeInUp col-sm-2" data-wow-delay="0.3s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<a href="<c:url value="/images/1.png"/>" title="认证证书" rel="prettyPhoto">
								<div class="hover-text">
									<h4>认证证书</h4>
									<small>认证证书</small>
								</div>
								<img src="<c:url value="/images/1.png"/>" width="166px" height="206px" alt="认证证书" />
							</a>
						</div>
					</div>
				</div>
				<div class="wow fadeInUp col-sm-2" data-wow-delay="0.6s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<a href="<c:url value="/images/2.png"/>" title="IQNet" rel="prettyPhoto">
								<div class="hover-text">
									<h4>IQNet</h4>
									<small>Certificate</small>
								</div>
								<img src="<c:url value="/images/2.png"/>" width="166px" height="206px" alt="IQNet" />
							</a>
						</div>
					</div>
				</div>
				<div class="wow fadeInUp col-sm-2" data-wow-delay="0.9s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<a href="<c:url value="/images/3.png"/>" title="专利证书" rel="prettyPhoto">
								<div class="hover-text">
									<h4>专利证书</h4>
									<small>专利证书</small>
								</div>
								<img src="<c:url value="/images/3.png"/>" width="166px" height="206px" alt="专利证书" />
							</a>
						</div>
					</div>
				</div>
				<div class="wow fadeInUp col-sm-2" data-wow-delay="1.2s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<a href="<c:url value="/images/4.png"/>" title="荣誉证书" rel="prettyPhoto">
								<div class="hover-text">
									<h4>荣誉证书</h4>
									<small>荣誉证书</small>
								</div>
								<img src="<c:url value="/images/4.png"/>" width="166px" height="206px" alt="荣誉证书" />
							</a>
						</div>
					</div>
				</div>
				<div class="wow fadeInUp col-sm-2" data-wow-delay="1.5s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<a href="<c:url value="/images/5.png"/>" title="荣誉证书" rel="prettyPhoto">
								<div class="hover-text">
									<h4>荣誉证书</h4>
									<small>荣誉证书</small>
								</div>
								<img src="<c:url value="/images/5.png"/>" width="166px" height="206px" alt="荣誉证书" />
							</a>
						</div>
					</div>
				</div>
				<div class="wow fadeInUp col-sm-2" data-wow-delay="1.8s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<a href="<c:url value="/images/6.png"/>" title="荣誉证书" rel="prettyPhoto">
								<div class="hover-text">
									<h4>荣誉证书</h4>
									<small>荣誉证书</small>
								</div>
								<img src="<c:url value="/images/6.png"/>" width="166px" height="206px" alt="荣誉证书" />
							</a>
						</div>
					</div>
				</div>
				<div class="wow fadeInUp col-sm-2" data-wow-delay="2.1s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<a href="<c:url value="/images/7.jpg"/>" title="奖杯成就" rel="prettyPhoto">
								<div class="hover-text">
									<h4>奖杯成就</h4>
									<small>奖杯成就</small>
								</div>
								<img src="<c:url value="/images/7.jpg"/>" width="166px" height="206px" alt="奖杯成就" />
							</a>
						</div>
					</div>
				</div>
				<div class="wow fadeInUp col-sm-2" data-wow-delay="2.4s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<a href="<c:url value="/images/8.png"/>" title="营业执照" rel="prettyPhoto">
								<div class="hover-text">
									<h4>营业执照</h4>
									<small>营业执照</small>
								</div>
								<img src="<c:url value="/images/8.png"/>" width="166px" height="206px" alt="营业执照" />
							</a>
						</div>
					</div>
				</div>
				<div class="wow fadeInUp col-sm-2" data-wow-delay="2.7s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<a href="<c:url value="/images/9.png"/>" title="营业执照" rel="prettyPhoto">
								<div class="hover-text">
									<h4>营业执照</h4>
									<small>营业执照</small>
								</div>
								<img src="<c:url value="/images/9.png"/>" width="166px" height="206px" alt="营业执照" />
							</a>
						</div>
					</div>
				</div>
				<div class="wow fadeInUp col-sm-2" data-wow-delay="3.0s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<a href="<c:url value="/images/10.png"/>" title="许可证书" rel="prettyPhoto">
								<div class="hover-text">
									<h4>许可证书</h4>
									<small>许可证书</small>
								</div>
								<img src="<c:url value="/images/10.png"/>" width="166px" height="206px" alt="许可证书" />
							</a>
						</div>
					</div>
				</div>
				<div class="wow fadeInUp col-sm-2" data-wow-delay="3.3s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<a href="<c:url value="/images/11.jpg"/>" title="许可证书" rel="prettyPhoto">
								<div class="hover-text">
									<h4>许可证书</h4>
									<small>许可证书</small>
								</div>
								<img src="<c:url value="/images/11.jpg"/>" width="166px" height="206px" alt="许可证书" />
							</a>
						</div>
					</div>
				</div>
				<div class="wow fadeInUp col-sm-2" data-wow-delay="3.6s">
					<div class="portfolio-item">
						<div class="hover-bg">
							<a href="<c:url value="/images/12.png"/>" title="会长单位" rel="prettyPhoto">
								<div class="hover-text">
									<h4>会长单位</h4>
									<small>会长单位</small>
								</div>
								<img src="<c:url value="/images/12.png"/>" width="166px" height="206px" alt="会长单位" />
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- SPONSORS SECTION -->
	<section id="companies" class="parallax-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 wow bounceIn">
					<div class="section-title">
						<h3>优质合作伙伴</h3>
						<p>百匠已经累计服务上万家企业，在业内有着极其高的声誉。</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="wow fadeInUp col-xs-6 col-sm-2" data-wow-delay="0.3s">
					<a href="javascript:void(0);"><img src="<c:url value="/img/clients/client-01.png"/>" width="150px" height="85px" alt="sponsors" /></a>
				</div>
				<div class="wow fadeInUp col-xs-6 col-sm-2" data-wow-delay="0.6s">
					<a href="javascript:void(0);"><img src="<c:url value="/img/clients/client-02.png"/>" width="150px" height="85px" alt="sponsors" /></a>
				</div>
				<div class="wow fadeInUp col-xs-6 col-sm-2" data-wow-delay="0.9s">
					<a href="javascript:void(0);"><img src="<c:url value="/img/clients/client-03.png"/>" width="150px" height="85px" alt="sponsors" /></a>
				</div>
				<div class="wow fadeInUp col-xs-6 col-sm-2" data-wow-delay="1.2s">
					<a href="javascript:void(0);"><img src="<c:url value="/img/clients/client-04.png"/>" width="150px" height="85px" alt="sponsors" /></a>
				</div>
				<div class="wow fadeInUp col-xs-6 col-sm-2" data-wow-delay="1.5s">
					<a href="javascript:void(0);"><img src="<c:url value="/img/clients/client-05.png"/>" width="150px" height="85px" alt="sponsors" /></a>
				</div>
				<div class="wow fadeInUp col-xs-6 col-sm-2" data-wow-delay="1.8s">
					<a href="javascript:void(0);"><img src="<c:url value="/img/clients/client-11.png"/>" width="150px" height="85px" alt="sponsors" /></a>
				</div>
				<div class="wow fadeInUp col-xs-6 col-sm-2" data-wow-delay="2.1s">
					<a href="javascript:void(0);"><img src="<c:url value="/img/clients/client-07.png"/>" width="150px" height="85px" alt="sponsors" /></a>
				</div>
				<div class="wow fadeInUp col-xs-6 col-sm-2" data-wow-delay="2.4s">
					<a href="javascript:void(0);"><img src="<c:url value="/img/clients/client-08.png"/>" width="150px" height="85px" alt="sponsors" /></a>
				</div>
				<div class="wow fadeInUp col-xs-6 col-sm-2" data-wow-delay="2.7s">
					<a href="javascript:void(0);"><img src="<c:url value="/img/clients/client-09.png"/>" width="150px" height="85px" alt="sponsors" /></a>
				</div>
				<div class="wow fadeInUp col-xs-6 col-sm-2" data-wow-delay="3.0s">
					<a href="javascript:void(0);"><img src="<c:url value="/img/clients/client-10.png"/>" width="150px" height="85px" alt="sponsors" /></a>
				</div>
				<div class="wow fadeInUp col-xs-6 col-sm-2" data-wow-delay="3.3s">
					<a href="javascript:void(0);"><img src="<c:url value="/img/clients/client-12.png"/>" width="150px" height="85px" alt="sponsors" /></a>
				</div>
				<div class="wow fadeInUp col-xs-6 col-sm-2" data-wow-delay="3.6s">
					<a href="javascript:void(0);"><img src="<c:url value="/img/clients/client-06.png"/>" width="150px" height="85px" alt="sponsors" /></a>
				</div>
			</div>
		</div>
	</section>
	<!-- CONTACT SECTION -->
	<section id="contact" class="text-center">
		<div class="overlay">
			<div class="container">
				<div class="wow fadeInUp col-md-8 col-md-offset-2 section-title" data-wow-delay="0.6s">
					<h3>与我们保持联系</h3>
					<p>请提交您的需求，我们专业的工作人员会与您第一时间取得联系。</p>
				</div>
				<div class="wow fadeInUp col-md-8 col-md-offset-2" data-wow-delay="0.9s">
					<form id="messageFrm" name="messageFrm" action="<c:url value="/app/cms/usermessage/insertNew"/>" method="post" novalidate>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input id="msgUname" name="msgUname" type="text" class="form-control" placeholder="姓名" required="required" />
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input id="msgEmail" name="msgEmail" type="email" class="form-control" placeholder="手机号码" required="required" />
									<p class="help-block text-danger"></p>
								</div>
							</div>
						</div>
						<div class="form-group">
							<textarea id="msgContent" name="msgContent" class="form-control" rows="10" placeholder="消息内容" required></textarea>
							<p class="help-block text-danger"></p>
						</div>
						<button id="btnMsgSubmit" type="submit" class="btn btn-default">发送信息</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- VENUE SECTION -->
	<section id="venue" class="parallax-section">
		<div class="container">
			<div class="row">
				<div class="wow fadeInLeft col-md-offset-1 col-md-4 col-sm-8" data-wow-delay="0.9s">
					<h3>公司地址</h3>
					<p><img src="<c:url value="/images/map-location.jpg"/>" class="img-responsive" alt="img" /></p>					
				</div>
				<div class="wow fadeInLeft col-md-4 col-sm-8 addr">
					<h3>&nbsp;</h3>
					<p><img src="<c:url value="/images/contact-img-1.png"/>" class="img-responsive" alt="img" /></p>	
				</div>
			</div>
		</div>
	</section>
	<!-- FOOTER SECTION -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<p class="wow fadeInUp" data-wow-delay="0.6s">Copyright &copy; 2018 Baijiang Pte. Ltd. | Designed and Created by : <a rel="nofollow" href="#" target="_parent">易钛（上海）信息咨询有限公司</a></p>
					<%-- <ul class="social-icon">
						<li><a href="#" class="wow fadeInUp" data-wow-delay="1s"><div class="client"><img alt="logo" src="<c:url value="/img/clients/logo1.png"/>" width="85px" height="55px" /></div></a></li>
						<li><a href="#" class="wow fadeInUp" data-wow-delay="1.3s"><div class="client"><img alt="logo" src="<c:url value="/img/clients/logo2.png"/>" width="85px" height="55px" /></div></a></li>
						<li><a href="#" class="wow fadeInUp" data-wow-delay="1.6s"><div class="client"><img alt="logo" src="<c:url value="/img/clients/logo3.png"/>" width="85px" height="55px" /></div></a></li>
						<li><a href="#" class="wow fadeInUp" data-wow-delay="1.9s"><div class="client"><img alt="logo" src="<c:url value="/img/clients/logo4.png"/>" width="85px" height="55px" /></div></a></li>
						<li><a href="#" class="wow fadeInUp" data-wow-delay="2.2s"><div class="client"><img alt="logo" src="<c:url value="/img/clients/logo5.png"/>" width="85px" height="55px" /></div></a></li>
						<li><a href="#" class="wow fadeInUp" data-wow-delay="2.5s"><div class="client"><img alt="logo" src="<c:url value="/img/clients/logo6.png"/>" width="85px" height="55px" /></div></a></li>
					</ul> --%>
				</div>
				<!-- <div class="col-md-12 col-sm-12">
					<ul class="social-icon">
						<li><a href="#" class="fa fa-facebook wow fadeInUp" data-wow-delay="1s"></a></li>
						<li><a href="#" class="fa fa-twitter wow fadeInUp" data-wow-delay="1.3s"></a></li>
						<li><a href="#" class="fa fa-dribbble wow fadeInUp" data-wow-delay="1.6s"></a></li>
						<li><a href="#" class="fa fa-behance wow fadeInUp" data-wow-delay="1.9s"></a></li>
						<li><a href="#" class="fa fa-google-plus wow fadeInUp" data-wow-delay="2.2s"></a></li>
					</ul>
				</div> -->
			</div>
		</div>
	</footer>
	<!-- Back top -->
	<a href="#back-top" class="go-top"><i class="fa fa-angle-up"></i></a>
	<!-- user login form -->
	<div id="login-frm" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<button class="close" data-dismiss="modal"><span>&times;</span></button>
				</div>
				<div class="modal-title">
					<h1 class="text-center"><img src="<c:url value="/images/logo.png"/>" alt="" width="50px" height="40px" />&nbsp;&nbsp;用户登录</h1>
				</div>
				<div class="modal-body">
					<form id="loginForm" action="<c:url value="/app/cms/user/doLogin"/>" method="post" class="form-group">
						<div class="form-group">
							<label for=""><b>用户名</b></label>&nbsp;:&nbsp;<input id="username" name="username" type="text" class="form-control" placeholder="6-15位字母或数字" />
						</div>
						<div class="form-group">
							<label for=""><b>密码</b></label>&nbsp;:&nbsp;<input id="password" name="password" type="password" class="form-control" placeholder="至少6位字母或数字" />
						</div>
						<div class="form-group">
							<p class="text-center"><font color="red"><b id="errMsg"></b></font></p>
						</div>
						<div class="text-right">
							<button id="btnLoginSubmit" class="btn btn-primary" type="submit">登录</button>
							<button id="btnLoginCancel" class="btn btn-danger" data-dismiss="modal">取消</button>
						</div>
						<a href="javascript:void(0);" data-toggle="modal" data-dismiss="modal" data-target="#register-frm">还没有账号？点我注册</a>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- user register form -->
	<div id="register-frm" class="modal fade" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<button class="close" data-dismiss="modal"><span>&times;</span></button>
				</div>
				<div class="modal-title">
					<h1 class="text-center"><img src="<c:url value="/images/logo.png"/>" alt="" width="50px" height="40px" />&nbsp;&nbsp;注册</h1>
				</div>
				<div class="modal-body">
					<form id="registerForm" action="<c:url value="/app/cms/user/doRegister"/>" method="post" class="form-group">
						<div class="form-group">
							<label for=""><b>用户名</b></label>&nbsp;:&nbsp;<input id="_username" name="_username" class="form-control" type="text" placeholder="6-15位字母或数字">
						</div>
						<div class="form-group">
							<label for=""><b>密码</b></label>&nbsp;:&nbsp;<input id="_password" name="_password" class="form-control" type="password" placeholder="至少6位字母或数字">
						</div>
						<div class="form-group">
							<label for=""><b>再次输入密码</b></label>&nbsp;:&nbsp;<input id="_repassword" class="form-control" type="password" placeholder="至少6位字母或数字">
						</div>
						<div class="form-group">
							<label for=""><b>昵称</b></label>&nbsp;:&nbsp;<input id="alias" name="alias" class="form-control" type="text" placeholder="例如:阿猫阿狗">
						</div>
						<div class="form-group">
							<label for=""><b>邮箱</b></label>&nbsp;:&nbsp;<input id="_email" name="_email" class="form-control" type="email" placeholder="例如:abc123@mail.com">
						</div>
						<div class="text-right">
							<button id="btnRegSubmit" class="btn btn-primary" type="submit">提交</button>
							<button id="btnRegCancel" class="btn btn-danger" data-dismiss="modal">取消</button>
						</div>
						<a href="" data-toggle="modal" data-dismiss="modal" data-target="#login-frm">已有账号？点我登录</a>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<!-- SCRIPTS -->
<script type="text/javascript" src="<c:url value="/js/jquery.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.parallax.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/owl.carousel.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/smoothscroll.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/wow.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.prettyPhoto.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/custom.js"/>"></script>
<script type="text/javascript">var _contextRoot = '<%= request.getContextPath() %>';</script>
</html>