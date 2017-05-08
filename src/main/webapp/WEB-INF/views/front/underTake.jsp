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
	<title>工程承接</title>
	<link rel="Shortcut Icon" href="<%=request.getContextPath() %>/img/img.ico">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/scdtjx/css/public.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/scdtjx/css/home.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/scdtjx/css/phone.css">
</head>
<style>
	#nav>li>a.nav-undertake{background-color: #db2026;color: #fff}
	.navbar .navbar-brand{background: none;color: #ddd}
	.breadcrumb{font-size: 16px;}
	.thumbnail{padding: 0;border:none;}
  .news-img{max-height: 392px;overflow: hidden;margin-bottom: 20px;}
	.news-img img{width: 100%;}
	.the-article{background-color: #f2f2f2;border-bottom-left-radius: 5px}
	.col-md-3,.col-md-9{padding: 0;}
	.list-group-item{border:none;background: #f2f2f2;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
  a.list-group-item:hover{background: #fff;border-left: 5px solid #db2026;padding-left: 10px;}
	.list-group-item.active{background: #db2026;}
	.list-group-item.active:hover{background: #db2026}
	.jumbotron>p{font-size: 14px;line-height: 36px;}
	.jumbotron>p.caption{color: #444;font-size: 20px;text-align: center;font-weight: bold;margin-bottom: 30px;}
	.jumbotron>p.context{color: #666;font-weight: 500;text-indent: 2em;margin-bottom: 0}
</style>
<body>
<!-- header 头部-->
	<script src="<%=request.getContextPath() %>/scdtjx/js/header.js"></script>
<!-- 正文 -->
  <div class="container">
  	<div class="news-img">
  		<div class="thumbnail">
  			<img src="<%=request.getContextPath() %>/scdtjx/img/undertake.jpg" alt="">
  		</div>
  	</div>

    <!-- 路径导航 -->
    <ol class="breadcrumb">
      <li><a href="<%=request.getContextPath() %>/index.do">首页</a></li>
      <li class="active">工程承接<span>&nbsp;|&nbsp;UNDERTAKE</span></li>
    </ol>

    <div class="row the-article">
    	<div class="col-md-3">
    		<div class="list-group">
    		  <a href="#" class="list-group-item active">
    		   招标公告
    		  </a>
    		  <c:forEach items="${underTakes }" var="items">
    		  	  <a href="<%=request.getContextPath() %>/underTake.do?id=${items.id}" class="list-group-item">
		            <span class="zb-class">[&nbsp;${items.type }&nbsp;]&nbsp;</span>
		          	${items.title }
		          </a>
    		  </c:forEach>
    		  
    		</div>
    	</div>
    	<div class="col-md-9">
    		<div class="jumbotron" id="con">
    		  <p class="caption">${underTakeOne.title }</p>
    		  <p class="context">
    			${underTakeOne.introduce }
    			<c:forEach items="${underTakeOne.underImages }" var="img">
    		  		<img src="<%=request.getContextPath() %>/upload/${img.imageName}" width="100%">
    		  	</c:forEach>
    		  </p>
    		  <!-- <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p> -->
    		</div>
    	</div>
    </div>

  	
  </div>

  <!-- footer -->
  <script src="<%=request.getContextPath() %>/scdtjx/js/footer.js"></script>
</body>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</html>