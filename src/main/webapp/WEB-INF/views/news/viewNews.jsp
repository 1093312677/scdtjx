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
<style>
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			 <table class="table table-hover table-striped" >
	    	<tr class="">
	    		<td width="100px">编号</td>
	    		<td>标题</td>
	    		<td>时间</td>
	    		<td>查看新闻</td>
	    		<td>操作</td>
	    	</tr>
	    	<c:forEach items="${news }" var="items">
	    		<tr>
	    			<td><c:out value="${items.id }"></c:out></td>
	    			<td><c:out value="${items.title }"></c:out></td>
	    			<td><c:out value="${items.time }"></c:out></td>
	    			<td><a href="<%=request.getContextPath() %>/news/viewNewslOne.do?newsId=${items.id}">查看新闻</a></td>
	    			<td width="70px">
	   				<a href="javascript:void(0)" onclick="deleteItem(${items.id })"> <span class="glyphicon  glyphicon-trash" style="color:red" data-toggle="tooltip" data-placement="bottom" title="删除"></span></a>
	    			</td>
	    			
	    			
	    		</tr>
			</c:forEach>
	    </table>
		</div>
	</div>
		<script>
		function deleteItem(id) {
			var msg = "您真的确定要删除吗？\n\n请确认！";
			if (confirm(msg)==true){
				$.ajax({
					type:"post",
					url:"<%=request.getContextPath() %>/news/deleteNews.do",
					data:{"id":id},
					dataType: "json",
					success:function(data) {
						if(data == 1) {
							alert("删除成功！")
							window.setTimeout(reload,400);
						}
					},
					error:function(msg){
						alert(msg)
					}
				})
			}
			
		}
		function reload(){
			location.reload()
		}
	</script>
</body>
</html>