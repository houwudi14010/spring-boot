<#assign base=request.contextPath />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="shortcut icon" href="#" />
<link rel="stylesheet" href="${base}/static/js/bootstrap/bootstrap3/css/bootstrap.css">
<link rel="stylesheet" href="${base}/static/js/bootstrap/bootstrap3/css/bootstrap-theme.css">
<link rel="stylesheet" href="${base}/static/js/bootstrap/bootstrap-table/bootstrap-table.css">
<!-- 引入fileinput的css -->
<link  href="${base}/static/js/bootstrap/fileinput/css/fileinput.min.css" rel="stylesheet"/>
<link rel="stylesheet" href="${base}/static/js/bootstrap/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css">

<script src="${base}/static/js/bootstrap/bootstrap3/jquery.min.js"></script>
<script src="${base}/static/js/bootstrap/bootstrap3/js/bootstrap.js"></script>
<script src="${base}/static/js/bootstrap/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script src="${base}/static/js/bootstrap/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="${base}/static/js/bootstrap/bootstrap-table/bootstrap-table.js"></script>
<!-- 引入fileinput的js -->
<script type="text/javascript" src="${base}/static/js/bootstrap/fileinput/js/fileinput.min.js"></script>
<!-- 引入fileinput当地语言的js -->
<script type="text/javascript" src="${base}/static/js/bootstrap/fileinput/js/locales/zh.js"></script>
<!-- 引入fileinput主题的js -->
<script type="text/javascript" src="${base}/static/js/bootstrap/fileinput/themes/fa/theme.js"></script>
<script src="${base}/static/js/bootstrap/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<script src="${base}/static/js/bootstrap/bootstrap-bootbox/bootbox.js"></script>

</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<!-- <div class="cold-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">高级搜索</div>
					<div class="panel-body">
						<form class="form-inline">
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label for="searchName">名称:</label> <input type="text"
											class="form-control" id="name" placeholder="请输入商家名称...">
									</div>
								</div>
								<div class="col-md-8">
									<div class="form-group">
										<label for="searchBirthday">创建时间:</label>
										<div class="input-group" id="serarchBirthday">
											<input type="text" class="form-control date" id="startCrT"
												placeholder="请输入..."> <i
												class="input-group-addon glyphicon glyphicon-calendar"></i>
											<input type="text" class="form-control date" id="endCrT"
												placeholder="请输入...">
												
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<a class="btn btn-primary glyphicon glyphicon-search"
										href="javascript:searchUser()" role="button">搜索</a> <a
										class="btn btn-info glyphicon glyphicon-repeat" href="#"
										role="button">重置</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
 -->			<div class="cold-md-12">
				<div id="toolbar">
					<a class="btn btn-primary glyphicon glyphicon-plus" href="#"
						onclick="toAddEventbox()" role="button">新增</a> 
					<a class="btn btn-info glyphicon glyphicon-signal" href="#"
						onclick = "toUpdateButbox()" role="button">修改</a> <a
						class="btn btn-danger glyphicon glyphicon-trash"
						href="javascript:deleteAll()" role="button">批量删除</a>
				</div>

				<div clas="table" style="white-space:nowrap" id="eventtable"></div>
			</div>
		</div>
	</div>
<script type="text/javascript">

function toUpdateButbox(){
	var id = $("[name='chk']:checked").val();
	alert(id);
	dialog("${base}/helloTwo/updateEvent.do?id="+id);
	location.href="${base}/helloTwo/updateEvent.do?id="+id;
}

function  dialog(HTMLurl,submitUrl,title){
	var dialog = bootbox.dialog({
		 title: title,
	    message: getJspHtml(HTMLurl),
	    //调用方法  
	    buttons:{
   				"save":{
				  label: '保存',
				  //自定义样式
				  className: "btn-success",
				  callback: function() {
						$.ajax({
							url:submitUrl,
							type:'post',
							data:$("#addEventForm").serialize(),
							success:function(data){
									bootbox.alert("保存成功");
								$("#eventtable").bootstrapTable('refresh');
							},
							error:function(){
								bootbox.alert("ajax失败");
							}
						});  
				  }
				},
				"unSave":{
					  label: '取消',
					  //自定义样式
					 className: "btn-info",
					  callback: function() {
						 // return false;  //不关闭
					  }
					}
			}
	});
}


/* ------------------------------------新增---------------------------------------- */
function toAddEventbox(){
	var url = "${base}/helloTwo/toAddUser.do";	
	bootbox.dialog({
		title:'添加赛事',
		message:createAddContent(url),
		closeButton: true,
		buttons : {
			"success" : {
				"label" : "<i class='icon-ok'></i> 保存",
				"className" : "btn-sm btn-success",
				"callback" : function() {
					/* 正常新增方法 */
					 $.ajax({
						url:'${base}/helloTwo/addUser.do',
						type:'post',
						data:$("#add-bus-form").serialize(),
						dataType:'json',
						success:function(data){
							$('#eventtable').bootstrapTable('refresh');
						}
					});  
				}
			},
			"cancel" : {
				"label" : "<i class='icon-info'></i> 取消",
				"className" : "btn-sm btn-danger",
				"callback" : function() {
				}
			}
		}
	});

}
var res;
function createAddContent(url){
	$.ajax({
	url:url,
	async:false,
		success:function(data){
		res = data;
		}
	});
	return res;
}



/* -----------------------------------删除------------------------------------------ */
function deleteAll(){
	var ids=$("[name='chk']:checked").map(function(){
		return $(this).val()
	}).get()
	for(var i=0;i<ids.length;i++){
		
	}

if (ids.length==0) {
	alert("请至少选择一条数据删除")
	return 
}
if(confirm("确定删除这"+ids.length+"条数据吗")){
$.ajax({
	url:'<%=request.getContextPath() %>/httpclient/deleteAllEvents.do',
	type:'post',
	data:{"ids":ids.toString()},
	success:function(){
		alert("删除成功")
	}
})
}
	
}





/* -----------------------------------列表展示------------------------------------------ */
function searchUser(){
	initTable();
}
$(function(){
	initTable();
})
//列表展示
function initTable(){
	$('#eventtable').bootstrapTable('destroy');
	$('#eventtable').bootstrapTable({
		//toolbar:'#toolbar',
		 url:'${base}/helloTwo/querylists.do',
		method:'post',
		//search:true,//是否显示搜索框
		//searchText:'试试',//初始化搜索文字
		showColumns:false,//是否显示 内容列下拉框
		showToggle:false,//是否显示 切换试图（table/card）按钮
		showPaginationSwitch:false,//是否显示 数据条数选择框
		showRefresh:false,//是否显示刷新按钮
		detailView:false,//设置为 true 可以显示详细页面模式。
		showFooter:false,//是否显示列脚
		clickToSelect: false, //是否启用点击选中行
		contentType:"application/x-www-form-urlencoded;charset=UTF-8",
		striped:true,
		searchOnEnterKey:true,
   	    
		columns:[
		        
		        {field:'id',title:'ID',align:'center',width:150,
		        	formatter:function(value,row,index){   //  格式化  当前单元格内容
						//alert(value)
						return "<input type='checkbox' value="+value+" name='chk'/>";
					}		
		        },
				{field:'name',title:'姓名',width:100},        
				         
				        {field:'sex',title:'性别',width:100,
				        	formatter:function(value,row,index){
				        		return (row.sex==1?"男":"女");
				        	}	
				        },        
				       
				        {field:'nickname',title:'外号',width:100},
				{field:'caozuo',title:'操作',width:150,formatter:function(value,row,index){
					//console.info(row)
					return "<i class='glyphicon glyphicon-remove' onclick=\"deleteEventOne('"+row.id+"')\"></i>"
				}}
	          ]
	});
	
}
/* 单个删除 */
/* 单个删除 */
function deleteEventOne(id){
	alert(id);
	$.ajax({
		url:'${base}/helloTwo/deleteEventOne.do',
		data:{
			id:id
		},
		type:'post',
		dataType:'json',
		success:function(result){
			initTable();
		}
	})
}
	</script>
</body>
</html>