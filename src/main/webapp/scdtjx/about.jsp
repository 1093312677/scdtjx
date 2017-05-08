<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
	<meta name="keywords" content="机械租赁,工程承接，空压机出租，发电机，吊车">
	<meta name="descirption" content="东泰机械租赁有限公司，出租各品牌空压机、发电机、吊车、随车吊，发布工程承接信息招标代理，四川空压机租赁，成都空压机租赁，巴中空压机租赁。四川东泰机械租赁有限公司出租机械设备齐全，质量可靠，服务保证!">
	<title>东泰机械租赁有限公司</title>
	<link rel="Shortcut Icon" href="<%=request.getContextPath() %>/img/img.ico">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/scdtjx/css/public.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/scdtjx/css/home.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/scdtjx/css/phone.css">
<style>
  	.breadcrumb{font-size: 16px;}
	.navbar{margin-bottom: 0}
  	.navbar .navbar-brand{background: none;color: #ddd}
  	#nav>li>a.nav-about{background-color: #db2026;color: #fff}
  	.thumbnail{padding: 0;border:none;}
  	.about-img img{width: 100%;height: 200px;}
  	.con>p{text-indent: 2em;line-height: 24px;}
  	.about-us{display: flex;justify-content: center;margin: 20px 0;}
  	.about-us-img{width: 100%}
  	.btn-box{margin-top: 30px}
  	.btn-box>.btn{margin-right: 20px;border-radius: 2px;padding: 6px 20px;}
  	@media (max-width: 768px) {
  		.about-img img{height: 90px}
  		.about-us{margin: 0}
  	}
  </style>
</head>
<body>
  <!-- header -->
  <script src="<%=request.getContextPath() %>/scdtjx/js/header2.js"></script>
  	<!-- <div class="container"> -->
  		<div class="about-img">
  			<div class="thumbnail">
  				<img src="<%=request.getContextPath() %>/scdtjx/img/about.jpg" alt="">
  			</div>
  		</div>
  	<!-- </div> -->
  	<div class="container">
	  	<!-- 路径导航 -->
  		<ol class="breadcrumb">
  			<li><a href="../index.do">首页</a></li>
  			<li class="active">公司介绍<span>&nbsp;|&nbsp;ABOUT US</span></li>
  		</ol>

		<div class="row about-us">
			<div class="col-md-6 col-xs-8" id="about-us">
				<div class="thumbnail">
					<img src="<%=request.getContextPath() %>/scdtjx/img/about3.png" alt="">
				</div>	
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 img">
				<div class="thumbnail">
					<img class="about-us-img" src="<%=request.getContextPath() %>/scdtjx/img/about2.png" alt="">
				</div>
			</div>
			<div class="col-md-6 con">
				<p>四川东泰机械设备租赁有限公司创建于2005年，位于省会成都市武候区晋吉南路59号双楠格调一栋1021号。公司注册资本1000万元，总资产近1050万元，现有职工32人，其中工程技术人员17余人。我司是巴中市区唯一一家大型正规租赁公司，质量可靠，服务保证，我们有专门的服务团队维护各台出租的设备，保证客户能顺利快速地进行工期，提高工作效率。
				</p>
				<p>公司现有上百台机械设备对外出租，包括各种国产进口空压机，发电机，吊车，随车吊，随着公司的日益扩大，将不断引进更多国际先进工程设备，为发展大巴中贡献自己的力量，让更多客户用上省心节能的设备使我们的宗旨！
				</p>
				<div class="btn-box">
					<a href="<%=request.getContextPath() %>/scdtjx/contact.jsp" class="btn btn-default">联系我们</a>
					<button class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">立即咨询</button>

					<!-- 弹出框 -->
					<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
					  <div class="modal-dialog" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					        <h4 class="modal-title" id="exampleModalLabel">联系我们</h4>
					      </div>
					      <div class="modal-body">
					        <form>
					          <div class="form-group">
					            <label for="recipient-name" class="control-label">电话:</label>
					            <input type="text" class="form-control" id="recipient-name" value="18398910491 / 15520218482
">
					          </div>
					          <div class="form-group">
					            <label for="recipient-name" class="control-label">邮箱:</label>
					            <input type="text" class="form-control" id="recipient-name" value="240583841@qq.com">
					          </div>
					          <div class="form-group">
					            <label for="message-text" class="control-label">产品信息:</label>
					            <textarea class="form-control" id="message-text">本公司出租空压机(美国寿力、红五环、康普斯、埃尔曼)，发电机，吊车，随车吊。具体型号请咨询我们的电话或邮箱...</textarea>
					          </div>
					        </form>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
					        <!-- <button type="button" class="btn btn-primary">Send message</button> -->
					      </div>
					    </div>
					  </div>
					</div>

				</div>
			</div>
		</div>
  	</div>

  <!-- footer -->
  <script src="<%=request.getContextPath() %>/scdtjx/js/footer2.js"></script>
</body>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</html>