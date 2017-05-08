<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>submit thesis</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">

<script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
			</div>
			<div class="col-md-6">
				<form action="<%=request.getContextPath() %>/product/addProduct.do" method="post">
			         <div class="input-group" style="margin-top:10%">
			            <span class="input-group-addon" style="border-radius: 0;">产品名称</span>
			            <input type="text" name="productName"  class="form-control" style="border-radius: 0;" placeholder="产品名称（例如：空压机）">
			        </div>
			        <br>
			        <input type="submit" value="提交" class="btn btn-success" style="width:150px;border-radius: 0;"/>
				</form>
			</div>
			<div class="col-md-3">
			</div>
		</div>
	</div>
</body>
</html>