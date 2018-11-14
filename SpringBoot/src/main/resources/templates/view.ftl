<#assign base=request.contextPath />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<#-- 引入easyui核心样式 -->
<link rel="stylesheet" type="text/css" href="${base}/static/easyui/themes/default/easyui.css">
<#-- 引入easyui图标样式 -->
<link rel="stylesheet" type="text/css" href="${base}/static/easyui/themes/icon.css">

<#-- 引入layui样式 -->
<link rel="stylesheet" href="${base}/static/layui/css/layui.css">
<link rel="stylesheet" href="${base}/static/layui/css/modules/layer/default/layer.css">
</head>
<body>
<#-- 引入jquery -->
<script type="text/javascript" src="${base}/static/jquery.min.js"></script>
<#-- 引入easyui核心包 -->
<script type="text/javascript" src="${base}/static/easyui/jquery.easyui.min.js"></script>
<#-- 引入easyui语言包 -->
<script type="text/javascript" src="${base}/static/easyui/locale/easyui-lang-zh_CN.js"></script>

<#-- 引入layui核心包 -->
<script src="${base}/static/layui/layui.all.js"></script>
<script src="${base}/static/util-js.js"></script>

</head>
<body class="easyui-layout">
	 <div data-options="region:'north',title:'项目'" style="height:100px;">
     	
     </div>
     <div data-options="region:'west',title:'菜单展示'" style="width:200px;">
    	<ul id="treeBean"></ul>
	</div>  
    <div data-options="region:'center' ">
    	<div id="tta" class="easyui-tabs" data-options="fit:true"> 
		   	  <div title="首页" style="padding:20px;display:none;">
		   	  </div>    
		</div>
    </div>

<script type="text/javascript">

	//登陆成功提示消息
	$.messager.show({
		title:'系统消息',
		msg:'尊敬的用户，你的电脑将在5秒之后爆炸，请注意查收',
		timeout:5000,
		showType:'slide'
	});	

	$(function(){
	$('#treeBean').tree({    
	    url:"${base}/helloTwo/queryTree.do",    
	    parentField:"pid",
	    lines:true,
    	onSelect:function(node){
    	if(node.url != null){
    		addTabs(node.url,node.text);
    	}
	    }
	});  
})


function addTabs(urlStr,titleStr){
	if ($("#tta").tabs('exists',titleStr)) {
		$("#tta").tabs('select',titleStr)
	}else{
		$("#tta").tabs('add',{
			title:titleStr,    
			 content:'<iframe id="tta"  src="${base}/'+urlStr+'" style="width:100%;height:100%" ></iframe>',   		
		   
		    closable:true,
		})
	}
}

</script>
</body>
</html>