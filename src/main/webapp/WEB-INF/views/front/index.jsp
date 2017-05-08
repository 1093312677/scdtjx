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
</head>
<body>
<!-- header 头部-->
	<script src="<%=request.getContextPath() %>/scdtjx/js/header.js"></script>

	<div class="container banner">
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		    <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
		    <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
		  </ol>

		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		    <div class="item active left">
		      <img src="<%=request.getContextPath() %>/scdtjx/img/home/banner3.jpg" alt="...">
		    </div>
		    <div class="item next left">
		      <img src="<%=request.getContextPath() %>/scdtjx/img/home/banner2.jpg" alt="...">
		    </div>
		    <div class="item">
		      <img src="<%=request.getContextPath() %>/scdtjx/img/home/banner.jpg" alt="...">
		    </div>
		  </div>

		  <!-- Controls 控制按钮 -->
		  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>	
	</div>  
	
	<!-- 公告栏 -->
	<div class="container">
	  <div class="gonggao">
	  	<img src="<%=request.getContextPath() %>/scdtjx/img/home/noticeIco1.gif" alt="公告：">
	  	<marquee class="marquee" behavior="scroll" direction="right">空压机、发电机、吊车与随车吊，面向全国租赁&nbsp;\&nbsp;销售&nbsp;\&nbsp;服务！！！</marquee>
	  </div>
	</div>
	
	<!-- 产品栏 -->
	<div class="container">
	  <div class="row">
	  	<!-- 产品列表 -->
		<div class="col-md-3 product-menu">
		  <div class="list-group">
		    <a href="javascript:void(0)" class="list-group-item top">
		      产品分类
		    </a>
		    
		     <!-- 下拉展示型号 -->
		    <c:forEach items="${products }" var="items" varStatus="it">
		    	<div class="product-wrap">
		      	<div class="list-group-item" role="button" data-toggle="collapse" href="#${items.id }" aria-expanded="true" aria-controls="collapseExample">
		      	  ${items.productName }
		      	  <span class="badge">${items.productModels.size() }</span>
		      	  
		      	</div>
	  	    	<div class="collapse" id="${items.id }">
	  	    	  <div class="well xh">
	  	    	  	<c:forEach items="${items.productModels }" var="models" >
	  	    	    	<a href="<%=request.getContextPath() %>/introduce.do?id=${models.id}" target= _blank class="label">${models.productModelName }</a>
	  	    	    </c:forEach>
	  	    	  </div>
	  	    	</div> 	
	  	    </div>
		    	
		    	
		    </c:forEach>
		   
		    <a href="<%=request.getContextPath() %>/product.do?id=" class="list-group-item">更多...
			  <span class="glyphicon glyphicon-menu-right pull-right"></span>
		    </a>
		  </div>
		</div><!-- col-md-3 -->
		<!-- 产品展示 -->
	    <div class="col-md-9 product-list">
	      <div class="row">
	      	<!-- 产品展示/PRODUCT -->
	      	<div class="col-md-12">
			  <div class="product-show">
			  	<span class="p-zh">产品展示</span>
			  	<span class="p-en">PRODUCT</span>
			  	<span class="p-red"></span>
			  	<span class="p-gray"></span>
			  </div>
	      	</div>
			<!-- 空压机/地址选择 -->
			<div class="col-md-12">
			  <!-- 下拉式按钮 （空压机） -->
			  <div class="pro-item clearfix">
			  	<div class="btn-group">
			  	  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			  	   请选择&nbsp;&nbsp;<span class="caret"></span>
			  	  </button>
			  	  <ul class="dropdown-menu">
			  	  	<c:forEach items="${products }" var="items" varStatus="it">
			  	  		<li><a href="<%=request.getContextPath() %>/index.do?id=${items.id}">${items.productName }</a></li>
				    </c:forEach>
			  	  </ul>
			  	</div>
			  	<!-- 地址选择栏 -->
		  		<span class="address-more"><span class="glyphicon glyphicon-option-horizontal"></span></span>
		  		<div class="addressAll">
		  			<ul class="pro-address">
		  				<li><a class="active fun" onclick="fun(${id })">成都</a></li>
		  				<li><a onclick="fun('${id }')">绵阳</a></li>
		  				<li><a onclick="fun('${id }')">巴中</a></li>
		  				<li><a onclick="fun('${id }')">遂宁</a></li>
		  				<li><a onclick="fun('${id }')">南充</a></li>
		  				<li><a onclick="fun('${id }')">广元</a></li>
		  				<li><a onclick="fun('${id }')">乐山</a></li>
		  				<li><a onclick="fun('${id }')">阿坝</a></li>
		  				<li><a onclick="fun('${id }')">达州</a></li>
		  				<li><a onclick="fun('${id }')">凉山</a></li>
		  				<li><a onclick="fun('${id }')">宜宾</a></li>
		  				<li><a onclick="fun('${id }')">泸州</a></li>
		  				<li><a onclick="fun('${id }')">甘孜</a></li>
		  				<li><a onclick="fun('${id }')">雅安</a></li>
		  				<li><a onclick="fun('${id }')">资阳</a></li>
		  				<li><a onclick="fun('${id }')">自贡</a></li>
		  				<li><a onclick="fun('${id }')">德阳</a></li>
		  				<li><a onclick="fun('${id }')">广安</a></li>
		  				<li><a onclick="fun('${id }')">眉山</a></li>
		  				<li><a onclick="fun('${id }')">内江</a></li>
		  				<li><a onclick="fun('${id }')">攀枝花</a></li>
		  			</ul>
		  		</div>
			  </div>
			</div>

	      </div><!-- row -->

	      	<!-- 每个产品 -->
	      	<div class="row product-list-img product">
   				<c:forEach items="${product.productModels }" var="models" varStatus="it2">
   					<c:if test="${it2['index'] <8 }">
   						<div class="col-md-3 col-xs-6">
				          <a href="<%=request.getContextPath() %>/introduce.do?id=${models.id }" target= _blank >
				          <div class="thumbnail">
				            <img src="<%=request.getContextPath() %>/upload/${models.coverPhoto}" alt="..." title="${items.productName }[${models.weight }]">
				            <div class="caption">
				              <p class="xh">${models.weight }</p>
				              <p class="cp-btn" data-toggle="modal" data-target="#myModal">VIEW MORE +</p>
				          	</div>
				        	</div>
				          </a>
				      	</div>
   					</c:if>
	    	    </c:forEach>
	      		 	
		        
	      	</div>			

	    </div><!-- col-md-9 -->
	  </div><!-- row -->
	</div><!-- container -->

	<div class="container">
		<!-- 咨询我们图片 -->
		<div class="contactUs">
			<div class="thumbnail">
				<img src="<%=request.getContextPath() %>/scdtjx/img/home/contactUs.jpg" alt="">
			</div>
		</div>	
		<!-- 工程承接	 -->
		<div class="undertake">
			<div class="caption2">
				<span class="cap-zh">工程承接</span>
				<span class="cap-en">&nbsp;/&nbsp;PROJECT UNDERTAKE</span>
			</div>

			<div class="row">
				<div class="undertake-l">
					<a href="<%=request.getContextPath() %>/underTake.do" target= _blank class="under-more">更多&gt;</a>
				  <!-- Nav tabs -->
				  <ul class="nav nav-tabs" role="tablist">
				    <!-- <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">招标公告</a></li> -->
				  </ul>
				  <!-- Tab panes -->
				  <div class="tab-content">
				    <div role="tabpanel" class="tab-pane active" id="home">
						<ul class="col-md-9 zhaobiao">
							<c:forEach items="${underTakes }" var="items" >
								<li>
									<a href="<%=request.getContextPath() %>/underTake.do?id=${items.id }" target= _blank>
										<span class="zb-class">[&nbsp;${items.type }&nbsp;]&nbsp;</span>
										<span class="zb-message">
										${items.title }</span>
										<!-- <span class="zb-time">[2017.04.11]</span> -->
									</a>
								</li>
							</c:forEach>
							
						</ul>

						<div class="col-md-3">
							<div class="gccj">
								<img src="<%=request.getContextPath() %>/scdtjx/img/news.jpg" alt="">
								<div class="bg-text">
									<span>工程承接&nbsp;&gt;</span>
									<span>招标代理</span>
								</div>
							</div>
						</div>
				    </div>
				  </div>
				</div>
			</div>
		</div><!-- undertake -->
		
		<!-- 走进我们 -->
		<div class="welcome">
			<div class="caption2">
				<span class="cap-zh">走进我们</span>
				<span class="cap-en">&nbsp;/&nbsp;WECLOME TO US</span>
			</div>
			<!-- <p>本公司具有高光性能制造工艺，量身打造高性价比细分产品，保证每个产品的质量和品质。</p>
			<p>The company has a high performance manufacturing processes, cost breakdown products tailored</p> -->
			<div class="row">
				<div class="col-md-6 wel-img">
					<img src="<%=request.getContextPath() %>/scdtjx/img/home/welcome1.png" alt="">
				</div>
				<div class="col-md-6 wel-con">
					<p>四川东泰机械设备租赁有限公司创建于2005年，位于省会成都市武候区晋吉南路59号双楠格调一栋1021号。公司注册资本1000万元，总资产近1050万元，现有职工32人，其中工程技术人员17余人。我司是巴中市区唯一一家大型正规租赁公司，质量可靠，服务保证，我们有专门的服务团队维护各台出租的设备，保证客户能顺利快速地进行工期，提高工作效率。</p>
					<p>公司现有上百台机械设备对外出租，包括各种国产进口空压机，发电机，吊车，随车吊，随着公司的日益扩大，将不断引进更多国际先进工程设备，为发展大巴中贡献自己的力量，让更多客户用上省心节能的设备使我们的宗旨！</p>

					<a href="<%=request.getContextPath() %>/scdtjx/about.jsp">了解更多&gt;&gt;</a>
				</div>
			</div>
			<div class="row news">
				<!-- 每个新闻 -->
				<div class="col-md-6">
					<c:forEach items="${news }" var="items" >
						<div class="row news-list">
							<div class="col-md-3 col-xs-5"><img src="<%=request.getContextPath() %>/upload/${items.coverPhoto }" alt=""></div>
							<div class="col-md-9 col-xs-7">
								<h4><a href="<%=request.getContextPath() %>/news.do?id=${items.id}" class="news-cap"><c:out value="${items.title }"></c:out></a></h4>
								<h7><p class="news-test">${items.introduce }</p></h7>
							</div>
						</div>
					</c:forEach>
				</div>
				
				<div class="col-md-6 wel-img news-list-img">
					<img src="<%=request.getContextPath() %>/scdtjx/img/home/welcome2.png" style="max-height: 330px;" alt="">
				</div>
			</div>
		</div>

	
	</div>

  <!-- footer -->
  <script src="<%=request.getContextPath() %>/scdtjx/js/footer.js"></script>
</body>
<script>
	function fun(id) {
		$.ajax({
			type:"post",
			url:"<%=request.getContextPath() %>/productOne.do",
			data:{"id":id},
			dataType:"json",
			success:function(data){
					if(data.length <= 8) {
						var t = "";
						for(var i = 0;i<data.length;i++) {
							 t += "<div class='col-md-3 col-xs-6'><a href='introduce.do?id="+data[i].id+"' target= _blank >"
									+"<div class='thumbnail'>"
									+"<img src='upload/"+data[i].coverPhoto+"'>"
									+'<div class="caption">'
									+"<p class='xh'>"+data[i].productModelName+"</p>"
									+'<p class="cp-btn" data-toggle="modal" data-target="#myModal">VIEW MORE +</p>'
									+'</div></div></a></div>'
						}
						$(".product").html(t);
					} else {
						var t = "";
						for(var i = 0;i<8;i++) {
							t += "<div class='col-md-3 col-xs-6'><a href='introduce.do?id="+data[i].id+"' target= _blank >"
									+"<div class='thumbnail'>"
									+"<img src='upload/"+data[i].coverPhoto+"'>"
									+'<div class="caption">'
									+"<p class='xh'>"+data[i].productModelName+"</p>"
									+'<p class="cp-btn" data-toggle="modal" data-target="#myModal">VIEW MORE +</p>'
									+'</div></div></a></div>'
						}
						$(".product").html(t);
					}
					
			},
			error:function(msg){
				
			}
		})
	}
</script>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/scdtjx/js/home.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</html>