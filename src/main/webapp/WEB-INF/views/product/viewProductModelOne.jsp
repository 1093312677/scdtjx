<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>submit thesis</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">

<script src="<%=request.getContextPath() %>/js/jquery-3.1.1.min.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
<link href="<%=request.getContextPath() %>/css/style.css?v=4.1.0" rel="stylesheet">
<style>
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="panel panel-default">
			    
			    <div class="panel-body">
				      	<div class="col-md-6">
							<img src="<%=request.getContextPath() %>/upload/${productModel.coverPhoto }" width="400px"/>
						</div>
						<div class="col-md-6">
							<table class="table" >
								<tr style="margin-top:20px">
									<td>标题</td>
									<td>${productModel.weight }</td>
								</tr>
								<tr >
									<td>分类</td>
									<td>${productModel.product.productName }</td>
								</tr>
								<tr>
									<td>型号</td>
									<td>${productModel.productModelName }</td>
								</tr>
								
								<tr>
									<td>品牌</td>
									<td>${productModel.power }</td>
								</tr>
							</table>
						</div>
			    </div>
			</div>
			
		</div>
		<div class="row">
			<div class="panel panel-default">
			    <div class="panel-heading">
			        <h3 class="panel-title">
			            	详细介绍
			        </h3>
			    </div>
			    <div class="panel-body">
			      	${productModel.introduce }
			      	<br>
			      	<br>
			      	<c:forEach items="${productModel.modelImages }" var="items">
						<img src="<%=request.getContextPath() %>/upload/${items.imageName }"/>		
					</c:forEach>
			    </div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				
			</div>
		</div>
	</div>
</body>
</html>