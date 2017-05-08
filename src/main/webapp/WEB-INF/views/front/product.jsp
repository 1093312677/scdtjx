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
	<title>产品展示</title>
	<link rel="Shortcut Icon" href="<%=request.getContextPath() %>/img/img.ico">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/scdtjx/css/public.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/scdtjx/css/home.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/scdtjx/css/phone.css">
</head>
<style>
	#nav>li>a.nav-product{background-color: #db2026;color: #fff}
	.navbar .navbar-brand{background: none;color: #ddd}
	.product-item{padding: 0 20px; display: flex;flex-wrap: wrap;align-items: flex-start;justify-content: space-between;list-style: none;}
	.product-item>li{padding: 0 10px;margin-bottom: 15px;}
	.product-item>li>a{color: #666}
	.aside{background-color: #f2f2f2;margin-bottom: 20px; padding: 0;}
	
	h3{border-bottom: 1px dotted #ccc;text-align: center;padding: 10px 0;font-size: 16px;font-weight: bold;margin: 0;}
	.product-box{padding-top: 20px;border-bottom: 1px dotted #ccc;}
	.product-box>p{padding-left: 30px;font-weight: bold;}
	.list-group-item{background: #f5f5f5;font-weight: bold;border:none;border-top:1px dotted #ccc;}
	.list-group{margin-bottom: 0}
	.list-group-item.top{border:none;}
	/*.glyphicon-menu-right{display: none}*/
	.well{border:none;-webkit-box-shadow: none;
	box-shadow: none;}
	.well.xh{margin-top: 0;padding-top: 0;padding-left: 10px;background: #f5f5f5;}

	@media (max-width: 768px) {
		.glyphicon-menu-right{display: inline-block;}
	}
</style>
<body>
<!-- header 头部-->
	<script src="<%=request.getContextPath() %>/scdtjx/js/header.js"></script>

	<!-- 产品列表 -->
	<div class="container">	
 		<!-- 路径导航 -->
 		<ol class="breadcrumb">
 		  <li><a href="<%=request.getContextPath() %>/index.do">首页</a></li>
 		  <li class="active">产品展示<span>&nbsp;|&nbsp;PRODUCT</span></li>
 		</ol>

		<div class="row">
			<div class="col-md-3 aside">
			  	  <div class="list-group">
			  	    <a href="javascript:void(0)" class="list-group-item top">
			  	      全部产品
			  	    </a>
			  	    
				     <!-- 下拉展示型号 -->
				    <c:forEach items="${products }" var="items" varStatus="it">
				    	<div class="product-wrap">
					      	<div class="list-group-item" role="button" data-toggle="collapse" href="#${items.id }" aria-expanded="true" aria-controls="collapseExample">
					      	  ${items.productName }
					      	  <span class="badge">${items.productModels.size() }</span>
					      	  
					      	</div>
				  	    	<div class="collapse in" id="${items.id }">
				  	    	  <div class="well xh">
				  	    	  	<c:forEach items="${items.productModels }" var="models" >
				  	    	    	<a href="<%=request.getContextPath() %>/introduce.do?id=${models.id }" class="label">${models.productModelName }</a>
				  	    	    </c:forEach>
				  	    	  </div>
				  	    	</div> 	
				  	    </div>
				    </c:forEach>
				    

			      	
			  	  </div>
			</div>
			<div class="col-md-9">
		      	<!-- 每个产品 -->
		      	<div class="row product-list-img">
			      	<c:forEach items="${products }" var="items" varStatus="it">
			      		<c:forEach items="${items.productModels }" var="models" >
		  	    	    	<div class="col-md-3 col-xs-6">
					          <a href="<%=request.getContextPath() %>/introduce.do?id=${models.id }">
					          <div class="thumbnail">
					            <img src="<%=request.getContextPath() %>/upload/${models.coverPhoto}" alt="..." title="${models.product.productName } [${models.productModelName }]">
					            <div class="caption">
					              <p class="xh">${models.product.productName } [${models.productModelName }]</p>
					              <p class="cp-btn" data-toggle="modal" data-target="#myModal">VIEW MORE +</p>
					          	</div>
					        	</div>
					          </a>
					      	</div>
		  	    	    </c:forEach>
			      	</c:forEach>
			        
		      	</div>
			</div>
		</div>
	</div>

	<!-- footer -->
	<script src="<%=request.getContextPath() %>/scdtjx/js/footer.js"></script>
</body>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script>
	$(function(){
		var w = document.body.clientWidth;
		if ( w < 768 ) {
			$(".collapse").removeClass('in');
			$(".list-group-item").attr('aria-expanded','false')
		}
		// $(".well>span").unbind();
		// $(".collapse").unbind();
		// $(".well").unbind()
	})
</script>

</html>