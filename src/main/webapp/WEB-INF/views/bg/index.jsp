<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>东泰机械-后台管理</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="renderer" content="webkit">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<!--[if lt IE 9]>
	<meta http-equiv="refresh" content="0;ie.html" />
	<![endif]-->

    <link rel="shortcut icon" href="<%=request.getContextPath() %>/img/img.ico"> <link href="<%=request.getContextPath() %>/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/style.css?v=4.1.0" rel="stylesheet">

</head>
<body>
<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
    <div id="wrapper">
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                                    <span class="block m-t-xs" style="font-size:20px;">
                                        <i class="fa fa-area-chart"></i>
                                        <strong class="font-bold">后台管理</strong>
                                    </span>
                                </span>
                            </a>
                        </div>
                        <div class="logo-element">东泰机械
                        </div>
                    </li>
                    <li>
                        <a class="J_menuItem" href="<%=request.getContextPath() %>/page/welcome.jsp">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">主页</span>
                        </a>
                    </li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">产品</span>
                    </li>
                    
                    <li>
                        <a href="#">
                            <i class="fa fa fa-bar-chart-o"></i>
                            <span class="nav-label">产品</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="J_menuItem" href="<%=request.getContextPath() %>/page/product/addProduct.jsp">添加分类</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="<%=request.getContextPath() %>/product/addModelView.do">添加型号</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="<%=request.getContextPath() %>/product/viewProduct.do">查看分类</a>
                            </li>
                            
                        </ul>
                    </li>
                   
                    <li class="line dk"></li>
                     <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">工程承接</span>
                    </li>
                    
                     <li>
                        <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">工程承接</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="<%=request.getContextPath() %>/page/under/addUnderTake.jsp">添加承接</a>
                            </li>
                            <li><a class="J_menuItem" href="<%=request.getContextPath() %>/under/viewUnderTake.do?type=bg">查看承接</a>
                            </li>
                        </ul>
                    </li>
                    
                    
                    <li class="line dk"></li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">新闻动态</span>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-flask"></i> <span class="nav-label">新闻动态</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="<%=request.getContextPath() %>/page/news/addNews.jsp">添加动态</a>
                            </li>
                            <li>
                            	<a class="J_menuItem" href="<%=request.getContextPath() %>/news/viewNews.do?type=bg">查看动态</a>
                            </li>
                        </ul>
                    </li>
                    <li class="line dk"></li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">设置</span>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-cutlery"></i> <span class="nav-label">设置 </span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="<%=request.getContextPath() %>/page/account/addAccount.jsp">添加帐号</a>
                            </li>
                            <li data-toggle="modal" data-target="#myModal"><a class="J_menuItem1"  href="javascript:void(0)">设置密码</a>
                            	
                            </li>
                        </ul>
                    </li>

				   <li>
                        <a class="J_menuItem 1" href="<%=request.getContextPath() %>/account/loginOut.do">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">退出</span>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <!--左侧导航结束-->
        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-info " href="#"><i class="fa fa-bars"></i> </a>
                    </div>
                </nav>
            </div>
            <div class="row J_mainContent" id="content-main">
                <iframe id="J_iframe" width="100%" height="100%" src="<%=request.getContextPath() %>/page/welcome.jsp" frameborder="0" data-id="index_v1.html" seamless></iframe>
            </div>
        </div>
        <!--右侧部分结束-->
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
					修改密码
				</h4>
			</div>
			<div class="modal-body">
				<form action="<%=request.getContextPath() %>/account/updateUser.do" method="post" onsubmit="return check()">
			         <input type="hidden" value="${user.password}" id="oldPwd"/>
			         <div class="input-group" style="margin-top:4%">
			            <span class="input-group-addon" style="border-radius: 0;">旧　密码</span>
			            <input type="password" id="old" class="form-control" style="border-radius: 0;" placeholder="旧　密码" required>
			        </div>
			        <div class="input-group" style="margin-top:4%">
			            <span class="input-group-addon" style="border-radius: 0;">新　密码</span>
			        	 <input type="password" name="password" id="ps1"   class="form-control" style="border-radius: 0;" placeholder="密码" required>
			        </div>
			        <div class="input-group" style="margin-top:4%">
			            <span class="input-group-addon" style="border-radius: 0;">确认密码</span>
			        	 <input type="password" name="password1" id="ps2"   class="form-control" style="border-radius: 0;" placeholder="确认密码" required>
			        </div>
			        <br>
			        <input type="submit" value="提交" class="btn btn-success" style="width:150px;border-radius: 0;"/>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

    <!-- 全局js -->
    <script src="<%=request.getContextPath() %>/js/jquery.min.js?v=2.1.4"></script>
    <script src="<%=request.getContextPath() %>/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="<%=request.getContextPath() %>/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<%=request.getContextPath() %>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/plugins/layer/layer.min.js"></script>

    <!-- 自定义js -->
    <script src="<%=request.getContextPath() %>/js/hAdmin.js?v=4.1.0"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/index.js"></script>

    <!-- 第三方插件 -->
    <script src="<%=request.getContextPath() %>/js/plugins/pace/pace.min.js"></script>
<div style="text-align:center;">

</div>
<script>
		function check() {
			var ps1 = $("#ps1").val();
			var ps2 = $("#ps2").val();
			var old = $("#old").val();
			var oldPwd = $("#oldPwd").val();
			
			if(old != oldPwd) {
				alert("和原来密码不一致！");
				return false;
			}else if(ps1 == ps2){
				return true;
			}else {
				alert("两次密码不一致！")
				return false;
			}
			
		}
	</script>
</body>

</html>
