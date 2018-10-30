<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>百匠 - 万灵财税咨询（上海）有限公司</title>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1" />
	<link rel="shortcut icon" href="<c:url value="/favicon-16.ico"/>" />
	<!-- css -->
	<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/css/cubeportfolio.min.css"/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/css/style1.css"/>" />
	<!-- Theme skin -->
	<link id="t-colors" href="<c:url value="/skins/default.css"/>" rel="stylesheet" />
	<!-- boxed bg -->
	<link id="bodybg" href="<c:url value="/bodybg/bg1.css"/>" type="text/css" rel="stylesheet" />
</head>
<body>
	<div id="wrapper">
		<!-- start header -->
		<header>
			<div class="top">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<ul class="topleft-info">
								<li><i class="fa fa-paper-plane"></i>&nbsp;欢迎来到百匠</li>
							</ul>
						</div>
						<div class="col-md-6">
							<ul class="topright-info">
								<li><i class="fa fa-phone"></i>&nbsp;021-68818288</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="navbar navbar-default navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="<c:url value="/"/>"><img src="<c:url value="/images/logo-1.png"/>" alt="" width="60px" height="40px" /></a>
					</div>
					<div class="navbar-collapse collapse ">
						<ul class="nav navbar-nav">
							<li><a href="<c:url value="/"/>">首页</a></li>
							<li class="dropdown">
								<a href="javascript:void(0);" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">工商服务</a>
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
								<a href="javascript:void(0);" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">关于百匠</a>
								<ul class="dropdown-menu">
									<li><a href="<c:url value="/app/cms/topic1?id=gsjs"/>">公司介绍</a></li>
									<li><a href="<c:url value="/app/cms/topic1?id=tdjs"/>">团队介绍</a></li>
									<li><a href="<c:url value="/app/cms/topic1?id=qyxx"/>">企业形象</a></li>
									<li><a href="<c:url value="/app/cms/topic1?id=ywjs"/>">业务介绍</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="javascript:void(0);" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">知识产权</a>
								<ul class="dropdown-menu">
									<li><a href="<c:url value="/app/cms/topic2?id=logosj"/>">LOGO设计</a></li>
									<li><a href="<c:url value="/app/cms/topic2?id=qyxcpzz"/>">企业宣传片制作</a></li>
									<li><a href="<c:url value="/app/cms/topic2?id=zlfw"/>">专利服务</a></li>
									<li><a href="<c:url value="/app/cms/topic2?id=bqfw"/>">版权服务</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="javascript:void(0);" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">信息咨询</a>
								<ul class="dropdown-menu">
									<li><a href="<c:url value="/app/cms/topic3?id=mhkf"/>">门户开发</a></li>
									<li><a href="<c:url value="/app/cms/topic3?id=appzz"/>">APP制作</a></li>
									<li><a href="<c:url value="/app/cms/topic3?id=xtwh"/>">系统维护</a></li>
									<li><a href="<c:url value="/app/cms/topic3?id=qyxxh"/>">企业信息化</a></li>
								</ul>
							</li>
							<li><a href="<c:url value="/app/cms/home#contact"/>" class="">联系我们</a></li>
						</ul>
					</div>
				</div>
			</div>
		</header>
		<!-- end header -->
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="<c:url value="/"/>"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
							<li><a href="javascript:void(0);">信息咨询</a><i class="icon-angle-right"></i></li>
							<li class="active">${topic_title}</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<aside class="left-sidebar">
							<div class="widget">
								<h5 class="widgetheading">流行标签</h5>
								<ul class="tags">
									<li><a href="javascript:void(0);">代理</a></li>
									<li><a href="javascript:void(0);">低税</a></li>
									<li><a href="javascript:void(0);">记账</a></li>
									<li><a href="javascript:void(0);">注册</a></li>
									<li><a href="javascript:void(0);">特殊</a></li>
									<li><a href="javascript:void(0);">网络</a></li>
								</ul>
							</div>
						</aside>
					</div>
					<div class="col-lg-8">
						<h3>${topic_title}</h3>
						<img src="${topic_pic}" alt="" class="img-responsive" />
						${topic_p}
					</div>
				</div>
			</div>
		</section>
		<footer>
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<div class="widget">
							<h4>关于百匠-万灵财税</h4>
							<ul class="link-list">
								<li><a href="<c:url value="/app/cms/topic1?id=gsjs"/>">公司介绍</a></li>
								<li><a href="<c:url value="/app/cms/topic1?id=tdjs"/>">团队介绍</a></li>
								<li><a href="<c:url value="/app/cms/topic1?id=qyxx"/>">企业形象</a></li>
								<li><a href="<c:url value="/app/cms/topic1?id=ywjs"/>">业务介绍</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget">
							<h4>友情链接</h4>
							<ul class="link-list">
								<li><a href="http://www.tax.sh.gov.cn/pub/">国家税务总局上海市税务局</a></li>
								<li><a href="http://www.tax.sh.gov.cn/fxtax/">国家税务总局上海市奉贤区税务局</a></li>
								<li><a href="http://www.sgs.gov.cn/shaic/">上海市工商行政管理局</a></li>
								<li><a href="http://www.sipa.gov.cn/zscqj/index.html">上海市知识产权局</a></li>
								<li><a href="http://www.fengxian.gov.cn/czj/dtzx/002001/">上海市奉贤区财政局</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget">
							<h4>地址详情</h4>
							<address><strong>百匠中小企业服务平台 – 万灵财税咨询（上海）有限公司</strong><br/>上海市浦东新区上南路3855号11号楼211室 如日商务园</address>
							<p><i class="icon-phone"></i>021- 68818288<br/>13371928666<br/><i class="icon-envelope-alt"></i>www.shbaijiang.cn</p>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget">
							<h4>订阅NEWS</h4>
							<p>请填写一个电子邮箱的地址在下面的订阅栏</p>
							<div class="form-group multiple-form-group input-group">
								<input type="email" name="email" class="form-control" />
								<span class="input-group-btn">
									<button type="button" class="btn btn-theme btn-add">订阅</button>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="sub-footer">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="copyright">
								<p><center>Copyright &copy; 百匠 - 万灵财税咨询（上海）有限公司 | <a rel="nofollow" href="http://www.miitbeian.gov.cn" target="_parent">沪ICP备18040351号</a> | Designed and Created by : <a rel="nofollow" href="#" target="_parent">易钛（上海）信息咨询有限公司</a></center></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
</body>
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/modernizr.custom.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.easing.1.3.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.appear.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/stellar.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/classie.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/uisearch.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.cubeportfolio.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/google-code-prettify/prettify.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/animate.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/custom1.js"/>"></script>
</html>