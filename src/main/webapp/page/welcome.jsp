<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>view class</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">


<script src="<%=request.getContextPath() %>/js/jquery-3.1.1.min.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
<style type="text/css">
.row{
	margin-top:10%;
}
.border{
	border:solid 1px #f2dede;
}
</style>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-4">
		
		</div>
		<div class="col-md-4">
			<div class="panel panel-default">
			    <div class="panel-heading">
			        <h3 class="panel-title">
			        	提示
			        </h3>
			    </div>
			    <div class="panel-body">
			    	欢迎！
			    </div>
			</div>
		</div>
	</div>
</div>
	
<script>
	$(function () { $("[data-toggle='tooltip']").tooltip(); });
</script>	
	
</body>
</html>