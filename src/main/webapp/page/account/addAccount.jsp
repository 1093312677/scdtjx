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
				<form action="<%=request.getContextPath() %>/account/addUser.do" method="post" onsubmit="return check()">
			         <div class="input-group" style="margin-top:10%">
			            <span class="input-group-addon" style="border-radius: 0;">帐　　号</span>
			            <input type="text" name="username"  class="form-control" style="border-radius: 0;" placeholder="帐号名称" required>
			        </div>
			        <div class="input-group" style="margin-top:10%">
			            <span class="input-group-addon" style="border-radius: 0;">密　　码</span>
			        	 <input type="password" name="password" id="ps1"   class="form-control" style="border-radius: 0;" placeholder="密码" required>
			        </div>
			        <div class="input-group" style="margin-top:10%">
			            <span class="input-group-addon" style="border-radius: 0;">确认密码</span>
			        	 <input type="password" name="password1" id="ps2"   class="form-control" style="border-radius: 0;" placeholder="确认密码" required>
			        </div>
			        <br>
			        <input type="submit" value="提交" class="btn btn-success" style="width:150px;border-radius: 0;"/>
				</form>
			</div>
			<div class="col-md-3">
			</div>
		</div>
	</div>
	<script>
		function check() {
			var ps1 = $("#ps1").val();
			var ps2 = $("#ps2").val();
			if(ps1 == ps2){
				return true;
			}else {
				alert("两次密码不一致！")
				return false;
			}
			
		}
	</script>
</body>
</html>