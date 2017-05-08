<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>submit thesis</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">

    <link rel="shortcut icon" href="<%=request.getContextPath() %>/img/img.ico"> <link href="<%=request.getContextPath() %>/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/style.css?v=4.1.0" rel="stylesheet">
     <!-- 全局js -->
    <script src="<%=request.getContextPath() %>/js/jquery.min.js?v=2.1.4"></script>
    <script src="<%=request.getContextPath() %>/js/bootstrap.min.js?v=3.3.6"></script>
<style>
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			 <table class="table table-hover table-striped" >
	    	<tr class="">
	    		<td width="100px">编号</td>
	    		<td>产品名称</td>
	    		<td>查看型号</td>
	    		<td>操作</td>
	    	</tr>
	    	<c:forEach items="${products }" var="items">
	    		<tr>
	    			<td><c:out value="${items.id }"></c:out></td>
	    			<td><c:out value="${items.productName }"></c:out></td>
	    			<td><a href="<%=request.getContextPath() %>/product/viewProductModel.do?productId=${items.id}">查看型号</a></td>
	    			<td width="70px">
	   				<a href="javascript:void(0)" onclick="deleteItem(${items.id })"> <span class="glyphicon  glyphicon-trash" style="color:red" data-toggle="tooltip" data-placement="bottom" title="删除"></span></a>
	    				<a href="javascript:void(0)" data-toggle="modal" data-target="#myModal" 	onclick="editInfo(${items.id})"> <span class="glyphicon glyphicon-edit" style="color:green;padding-left:20px" title="更新"></span></a>
	    			</td>
	    			
	    			
	    		</tr>
			</c:forEach>
	    </table>
		</div>
	</div>
	<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					修改信息
				</h4>
			</div>
			<div class="modal-body">
				<div class="input-group" style="margin-top:5%">
		            <span class="input-group-addon" style="border-radius: 0;">产品名称</span>
		            <input type="text" name="name" id="name" class="form-control" style="border-radius: 0;" >
		         </div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" id="confim">
					提交更改
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
		<script>
		function deleteItem(id) {
			var msg = "您真的确定要删除吗？\n\n请确认！";
			if (confirm(msg)==true){
				$.ajax({
					type:"post",
					url:"<%=request.getContextPath() %>/product/deleteProduct.do",
					data:{"id":id},
					dataType: "json",
					success:function(data) {
						if(data == 1) {
							alert("删除成功！")
							window.setTimeout(reload,400);
						}
					},
					error:function(msg){
						
					}
				})
			}
			
		}
		
		function editInfo(id) {
				$.ajax({
					type:"post",
					url:"<%=request.getContextPath() %>/product/viewModelOneAjax.do",
					data:{"id":id},
					dataType: "json",
					success:function(data) {
						$("#name").val(data[0].productName);
					},
					error:function(msg){
						
					}
				})
			
			
		}
		
		$("#confim").click(function(){
			var name = $("#name").val();
			if(name != ""){
				$.ajax({
					type:"post",
					url:"<%=request.getContextPath() %>/product/updateProduct.do",
					data:{"name":name},
					dataType: "json",
					success:function(data) {
						if(data == 1) {
							alert("更新成功");
							window.setTimeout(reload,400);
						}else {
							alert("更新失败");
						}
					},
					error:function(msg){
						alert("更新失败");
					}
				})
			} else {
				alert("产品名称不能为空！")
			}
		})
		
		
		function reload(){
			location.reload()
		}
		
		
		
	</script>
</body>
</html>