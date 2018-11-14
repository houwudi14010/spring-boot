<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="shortcut icon" href="#" />
<link rel="stylesheet" href="../js/bootstrap/bootstrap3/css/bootstrap.css">
<link rel="stylesheet" href="../js/bootstrap/bootstrap3/css/bootstrap-theme.css">
<link rel="stylesheet" href="../js/bootstrap/bootstrap-table/bootstrap-table.css">
<!-- 引入fileinput的css -->
<link  href="../js/bootstrap/fileinput/css/fileinput.min.css" rel="stylesheet"/>
<link rel="stylesheet" href="../js/bootstrap/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css">

<script src="../js/bootstrap/bootstrap3/jquery.min.js"></script>
<script src="../js/bootstrap/bootstrap3/js/bootstrap.js"></script>
<script src="../js/bootstrap/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script src="../js/bootstrap/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="../js/bootstrap/bootstrap-table/bootstrap-table.js"></script>
<!-- 引入fileinput的js -->
<script type="text/javascript" src="../js/bootstrap/fileinput/js/fileinput.min.js"></script>
<!-- 引入fileinput当地语言的js -->
<script type="text/javascript" src="../js/bootstrap/fileinput/js/locales/zh.js"></script>
<!-- 引入fileinput主题的js -->
<script type="text/javascript" src="../js/bootstrap/fileinput/themes/fa/theme.js"></script>
<script src="../js/bootstrap/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<script src="../js/bootstrap/bootstrap-bootbox/bootbox.js"></script>

</head>
<body>
	
		<form id="add-bus-form" class="inline">
		
		<input type="hidden" name="id" value="${userBean.id}">
		
			
					    <input type="text" name="name" value="${userBean.name}" id="uuid-busId">
			
					    <input type="radio" name="sex" <c:if test="${userBean.sex=='1'}">checked</c:if>  value="1">男
					    <input type="radio" name="sex"  <c:if test="${userBean.sex=='1'}">checked</c:if>value="2">女
		
					    <input type="text" name="hobby" value="${userBean.hobby}">
					   
			
					    <input type="text" name="nickname" value="${userBean.nickname}">
					
		</form>
		
		
</body>
</html>