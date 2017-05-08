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
	<title>产品展示-产品介绍</title>
	<link rel="Shortcut Icon" href="<%=request.getContextPath() %>/img/img.ico">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/scdtjx/css/public.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/scdtjx/css/home.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/scdtjx/css/phone.css">
</head>
<style>
  	#nav>li>a.nav-product{background-color: #db2026;color: #fff}
	.navbar .navbar-brand{background: none;color: #ddd}
	
	.intro{margin-top: 30px;}
	.product-name{font-weight: bold;font-size: 20px;padding: 10px 15px 40px;background-color: rgba(255,155,0,.1);border-top: 3px solid #ff7300;color: #444}
	.intro-con{padding-top: 10px;font-size: 13px;color: #666}
	.ms{color: #444;font-weight: 600;}
	.contact-btn{margin-top: 40px;padding-left: 15px;}

	.text-intro{text-align: center;margin: 40px 15px 10px;padding: 30px 0;border-top: 3px solid #999;}
	.t-title{font-size: 16px;font-weight: bold;}
	.t-body{padding: 0 10%;line-height: 28px;}
	.t-detail{text-align: left;line-height: 50px;margin-top: -30px; color: #db2026;font-weight: bold;padding-left: 15px;font-size: 18px;border:1px solid #ccc;border-top: none;margin-bottom: 40px;}
  	.thumbnail>img{min-width: 85%;}
  </style>
<body>
<!-- header 头部-->
	<script src="<%=request.getContextPath() %>/scdtjx/js/header.js"></script>
<div class="container">
  	<div class="row intro">
  		<div class="col-sm-5">
  			<div class="thumbnail">
  				<img src="<%=request.getContextPath() %>/upload/${model.coverPhoto }" alt="">
  			</div>
  		</div>
  		<div class="col-sm-7">
  			 <div class="row">
	  			<p class="product-name">${model.weight }</p>
	  			<div class="row intro-con">
	  			 	<div class="col-md-2 col-xs-3">
	  			 		产品分类
	  			 	</div>
	  			 	<div class="col-md-10 col-xs-9 ms">
	  			 		${model.product.productName }
	  			 	</div>
	  			</div>
	  			<div class="row intro-con">
	  			 	<div class="col-md-2 col-xs-3">
	  			 		产品品牌
	  			 	</div>
	  			 	<div class="col-md-10 col-xs-9 ms">
	  			 		${model.power }
	  			 	</div>
	  			</div>
	  			<div class="row intro-con">
	  			 	<div class="col-md-2 col-xs-3">
	  			 		产品型号
	  			 	</div>
	  			 	<div class="col-md-10 col-xs-9 ms">
	  			 		${model.productModelName }
	  			 	</div>
	  			</div>

				<div class="contact-btn">
		  			<a href="#" class="btn-lg btn-danger" title="18398910491" data-toggle="modal" data-target="#exampleModal">立即租赁</a>
					<a href="about.html" class="btn-lg btn-default" style="border:1px solid #ccc;margin-left: 20px">了解更多</a>
					
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

  	<div class="text-intro">
  		<p class="t-title">详细信息</p>
  		<p class="t-body">本公司出租空压机(美国寿力、红五环、康普斯、埃尔曼)，发电机，吊车，随车吊。如有需要请电话咨询我们：18398910491 | 15520218482<br>${model.introduce } <br></p>
  		<c:forEach items="${model.modelImages }" var="img">
  			<img src="<%=request.getContextPath() %>/upload/${img.imageName }" alt=""> 
  		</c:forEach>
        <!-- <img src="img/product/H-W2.6.jpg" alt=""> -->
  	</div>

	<!--<div class="text-intro">
  		<p class="t-title">更多产品</p>
  		<p class="t-body">东泰机械租赁有限公司秉承“务实、诚信、拼搏、创新”的企业精神，经历了近二十年的历程取得了跨越式的发展。
          高起点才会有更高的品质，优雅的环境，先进的设备，高效的团队，造就了一批批优质的产品。</p>
  	</div>
  	<div class="row product-list-img" id="product">
        <div class="col-sm-3 col-xs-6">
          <a href="#">
          <div class="thumbnail">
            <img src="img/product/H-HW20007.jpg" alt="..." title="宏五环空压机 [HW20007]">
            <div class="caption">
              <p class="xh">宏五环空压机 [HW20007]</p>
              <p class="cp-btn" data-toggle="modal" data-target="#myModal">VIEW MORE +</p>
          	</div>
        	</div>
          </a>
      	</div>
        <div class="col-sm-3 col-xs-6">
          <a href="#">
          <div class="thumbnail">
            <img src="img/product/H-W2.6.jpg" alt="..." title="宏五环空压机 [H-W2.6/7]">
            <div class="caption">
              <p class="xh">宏五环空压机 [H-W2.6/7]</p>
              <p class="cp-btn">VIEW MORE +</p>
          	</div>
        	</div>
          </a>
      	</div>
        <div class="col-sm-3 col-xs-6">
          <a href="#">
          <div class="thumbnail">
            <img src="img/product/H-WW.jpg" alt="..." title="宏五环空压机 [WW]">
            <div class="caption">
              <p class="xh">宏五环空压机 [WW]</p>
              <p class="cp-btn">VIEW MORE +</p>
          	</div>
        	</div>
          </a>
      	</div>
        <div class="col-sm-3 col-xs-6">
          <a href="#">
          <div class="thumbnail">
            <img src="img/product/H-KG110W-8.jpg" alt="..." title="宏五环空压机 [KG110W-8]">
            <div class="caption">
              <p class="xh">宏五环空压机 [KG110W-8]</p>
              <p class="cp-btn">VIEW MORE +</p>
          	</div>
        	</div>
          </a>
      	</div>
  	</div> -->
  </div>

  <!-- footer -->
  <script src="<%=request.getContextPath() %>/scdtjx/js/footer.js"></script>
</body>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</html>