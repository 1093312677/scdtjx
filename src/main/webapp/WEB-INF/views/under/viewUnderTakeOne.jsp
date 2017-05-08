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
			    <div class="panel-heading">
			        <h3 class="panel-title">
			            	${underTake.title }（${underTake.type }）
			        </h3>
			    </div>
			    <div class="panel-body">
			    	<br>
			    	${underTake.introduce }
			    	
			    	<br>
			      	<br>
			      	<c:forEach items="${underTake.underImages }" var="items">
						<img src="<%=request.getContextPath() %>/upload/${items.imageName }"/>	
						<br>	
					</c:forEach>
			    </div>
			</div>
			
		</div>
	</div>
</body>
</html>