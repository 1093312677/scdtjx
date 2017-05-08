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
<!-- file -->
<script src="<%=request.getContextPath() %>/js/fileinput.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/js/fileinput_locale_zh.js" type="text/javascript"></script>
<link href="<%=request.getContextPath() %>/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
<!-- simditor -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/simditor/styles/simditor.css" />

<script type="text/javascript" src="<%=request.getContextPath() %>/simditor/scripts/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/simditor/scripts/module.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/simditor/scripts/hotkeys.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/simditor/scripts/uploader.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/simditor/scripts/simditor.js"></script>

<style>
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
			</div>
			<div class="col-md-6">
				<form action="<%=request.getContextPath() %>/product/addModel.do" method="post" enctype="multipart/form-data">
			         <div class="input-group" style="margin-top:4%">
			            <span class="input-group-addon" style="border-radius: 0;">选择类型</span>
			             <select name="productId" class="form-control">
				         	<c:forEach items="${products }" var="items">
				         		<option value="${items.id }">${items.productName }</option>
				         	</c:forEach>
			       		  </select>
			         </div>
			        <div class="input-group" style="margin-top:4%">
			            <span class="input-group-addon" style="border-radius: 0;">产品标题</span>
			            <input type="text" name="weight" class="form-control" style="border-radius: 0;" placeholder="产品标题">
			         </div>
			          <div class="input-group" style="margin-top:4%">
			            <span class="input-group-addon" style="border-radius: 0;">产品品牌</span>
			            <input type="text" name="power" class="form-control" style="border-radius: 0;" placeholder="产品品牌">
			         </div>
			         <div class="input-group" style="margin-top:4%">
			            <span class="input-group-addon" style="border-radius: 0;">产品型号</span>
			            <input type="text" name="productModelName" class="form-control" style="border-radius: 0;" placeholder="产品型号">
			         </div>
			          
			         
			         <br>
			         <textarea name="introduce" id="editor" placeholder="产品详细介绍" autofocus></textarea>
			         <div class="input-group" style="margin-top:5%">
			            <span class="input-group-addon" style="border-radius: 0;">封面图片</span>
			            <input type="file" name="file" class="file" class="form-control" style="border-radius: 0;" placeholder="文件" required="required">
			         </div>
			        <div class="input-group" style="margin-top:5%">
			            <span class="input-group-addon" style="border-radius: 0;">细节图片</span>
			            <input type="file" name="file" class="file" class="form-control" style="border-radius: 0;" placeholder="文件" multiple="multiple">
			         </div>
			        <br>
			        <br>
			        <input type="submit" value="提交" class="btn btn-success" style="width:150px;border-radius: 0;"/>
				</form>
			</div>
			<div class="col-md-3">
			</div>
		</div>
	</div>
	<script>
		var editor = new Simditor({
		  textarea: $('#editor')
		  //optional options
		});
	</script>
</body>
</html>