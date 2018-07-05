<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>easyuitest</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout" style="height:600px;width:1050px;margin:auto">
		<div data-options="region:'north'"  style="height:50px"><h2>博客管理系统</h1></div>
		<div data-options="region:'south'" style="width:100px;">...</div>
		<div data-options="region:'west',iconCls:'icon-edit'" title="操作栏" style="width:150px;">
			<div class="easyui-accordion" style="height:500px">
				<div  title="打开" data-options="iconCls:'icon-print'" style="overflow:auto;padding:10px;">
					<a href="javascript:void(0)" id="edit" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">打开百度</a>
					<script type="text/javascript">
						$(function(){
							$("#edit").click(function(){
								//alert();
								if(!$("#tabs").tabs("exists","百度")){
									$("#tabs").tabs("add",
											{
											title:"百度",
											content:"<iframe scrolling='auto' frameborder='0' src='https://www.baidu.com' style='width:730px;height:500px;'></iframe>",
											closable:true
											}
											);
								}else{
									$("#tabs").tabs("select","百度");
								}
								
							});
						});
					</script>
				
				</div>
				<div title="帮助" data-options="iconCls:'icon-add'">2</div>
				<div title="完成" data-options="iconCls:'icon-cut'">3</div>
			</div>		
		</div>
		<div data-options="region:'east'" title="展示栏" style="width:150px;">东</div>
		<div data-options="region:'center'" >
			<div class="easyui-tabs" id="tabs">
				<div title="公示" data-options="iconCls:'icon-tip'"></div>
			</div>
		</div>
</body>
</html>