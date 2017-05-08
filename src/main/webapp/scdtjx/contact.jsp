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
    /*.navbar{margin-bottom: 0}*/
    .breadcrumb{font-size: 16px;}
    .navbar .navbar-brand{background: none;color: #ddd}
    #nav>li>a.nav-contact{background-color: #db2026;color: #fff}
    .thumbnail{padding: 0;border:none;}
    .about-img img{width: 100%;}
    .contact-us{text-align: center;font-size: 16px;padding-bottom: 60px;}
    .address-message{margin: 60px 0}
    #map{padding: 0 10px;}
    .address-item{text-align: center;}
    .address-item>.glyphicon{font-size: 32px;color: #666}
    #mymap{width: 100%;height: 400px;margin: 0 auto}


    @media (max-width: 768px) {
      .about-us{margin: 0}
      .address-message{margin: 20px 0 10px 0}
      #mymap{height: 350px;}
    }
  </style>
</head>
<body>
  <!-- header -->
  <script src="<%=request.getContextPath() %>/scdtjx/js/header2.js"></script>

  <div class="container">
      <div class="about-img">
        <div class="thumbnail">
          <img src="<%=request.getContextPath() %>/scdtjx/img/contact_head.jpg" alt="">
        </div>
      </div>
      <!-- 路径导航 -->
      <ol class="breadcrumb">
        <li><a href="<%=request.getContextPath() %>/index.do">首页</a></li>
        <li class="active">联系我们<span>&nbsp;|&nbsp;CONTACT US</span></li>
      </ol>

      <div class="row address-message">
        <div class="col-md-4 col-xs-4 address-item">
          <span class="glyphicon glyphicon-phone-alt" data-toggle="tooltip" data-placement="top" title="18398910491"></span>
          <p>联系电话：18398910491</p>
        </div>
        <div class="col-md-4 col-xs-4 address-item">
          <span class="glyphicon glyphicon-map-marker" data-toggle="tooltip" data-placement="top" title="四川省巴中市州区盘新物流园对面"></span>
          <p>公司地址：四川省巴中市州区盘新物流园对面</p>
        </div>
        <div class="col-md-4 col-xs-4 address-item">
          <span class="glyphicon glyphicon-envelope" data-toggle="tooltip" data-placement="top" title="240583841@qq.com"></span>
          <p>联系邮箱：240583841@qq.com</p>
        </div>
      </div>

      <!-- <div class="row contact-us">
        <div class="col-md-10 col-md-offset-1">
          <p>MECHANICAL机械设备有限公司秉承“务实、诚信、拼搏、创新”的企业精神，经历了近二十年的历程取得了跨越式的发展。
          高起点才会有更高的品质，优雅的环境，先进的设备，高效的团队，造就了一批批优质的产品。</p>     
        </div>
      </div> -->
  </div>

  <!-- 地图信息 -->
  <div id="map" class="container">
    <div id="mymap"></div>
  </div>

  <!-- footer -->
  <script src="<%=request.getContextPath() %>/scdtjx/js/footer2.js"></script>
</body>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="http://api.map.baidu.com/api?v=2.0&ak=67jMQ5DmYTe1TLMBKFUTcZAR"></script>
<script type="text/javascript">  
    $(function(){  
        showMap(106.697214,31.829736); //初始坐标  
    })  

    //传入坐标，然后跳转到该位置  
    function showMap(x, y) {   
        var map = new BMap.Map("mymap");  
        map.centerAndZoom(new BMap.Point(x, y), 15); //坐标，放大倍数  
        //显示左上角的辅助栏  
         map.addControl(new BMap.NavigationControl());  
        //创建小红点  
        var marker = new BMap.Marker(new BMap.Point(x, y));  
        map.addOverlay(marker);  
        //穿件创建小红点上的提示框  
        var infoWindow = new BMap.InfoWindow("<p>四川东泰机械设备租赁有限公司</p><p>Tel:18398910491</p>");

        marker.openInfoWindow(infoWindow);
        marker.addEventListener("click", function(){  
            this.openInfoWindow(infoWindow);  
        })  
  
    }  

    $(function () {
      $('[data-toggle="tooltip"]').tooltip()
    })
</script>
</html>