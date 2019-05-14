<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.springframework.web.context.request.RequestScope"%>
<!DOCTYPE >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>攻略介绍</title>
<base href="<%=basePath%>">
<meta charset=utf-8" />
<link href="css/bootstrap.css" rel="stylesheet">
<link rel="shortcut icon" href="../favicon.ico"> 
<link rel="stylesheet" href="./css/default.css" />
<link rel="stylesheet" type="text/css" href="./css/component.css" />
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="css/lunbo.css" rel="stylesheet"/>
<script type="text/javascript" src="js/lunbo.js" ></script>
<jsp:include page="../../header.jsp"></jsp:include>
<%
  	String username = (String)session.getAttribute("username");
  	if (username == null) { %>
  		<script type="text/javascript">
			alert("你还没有登陆，请先登录");
			location.replace("totaljsp/manage/login.jsp");
  		</script>
  <%
  		return;
  } 
  %>
<style>
		.a{
			text-decoration:none;l	}
		.let{
		color: rgb(113, 198, 193);
		margin-left:-15%;
		font-family:Verdana;
		font-weight:bold;
		width:1000;<!--文字显示的宽度-->
		filter:Shadow (Color="#6699CC", Direction="400")wave(Add="0", Phase="4", Freq="9", LightStrength="20", Strength="1") ; 
			}
	</style>
    <style type="text/css">
		*{
			margin:0;
			padding:0;
			font-family:"Arial";
		}
		#la{
			width:962px;
			height:473px;
			margin:5px auto;
		}
		#la ul{
			list-style:none;
		}
		#la ul li{
			width:320px;
			list-style:none;
			height:250px;
			float:left;
			position:relative;
		}
		#la ul li img{
		list-style:none;
			border:10px solid #D9EDF7;
			-webkit-transition:1s ease;
			-moz-transition:1s ease;
		}
		#la .info{
			width:200px;
			height:110px;
			border:1px solid #D9EDF7 ;
			position:absolute;
			bottom:-50px;
			right:10px;
			-webkit-transition:1s ease;
			-moz-transition:1s ease;
			-moz-transform:rotatey(30deg);
			-webkit-transform:rotatey(30deg);
		}
		#la .info h2{
			text-align:center;
			line-height:70px;
			color:#66AFE9;
			font-weight:normal;
			font-size:30px;
		}
		#la .info p{
			padding:0 20px;
			font-size:14px;
		}
		#la .info a{
			display:block;
			width:100px;
			height:30px;
			background:#66AFE9;
			color:white;
			border-radius:5px;
			text-decoration:none;
			text-align:center;
			margin:10px auto;
			
		}
		#la ul li:hover .info{
			-webkit-transform:rotatey(0deg);
			-moz-transform:rotatey(0deg);
			right:30px;bottom:-70px;
		}
		#la ul li:hover img{
			-webkit-transform:rotatey(360deg);
			-moz-transform:rotatey(360deg);
		}
	</style>
	<style>
		.tab-panel {
			padding-top:5%;
			margin:50px auto auto;
			margin-left:15%;
			width: 600px;
		}
		.tab-head {
			font-size: 0;
			border:2px;
		}
		.tab-head-item {
			display: inline-block;
			vertical-align: middle;
			width: 150px;
			height:30px;
			line-height: 30px;
			font-size: 12px;
			text-align: center;
			cursor: default;
		}
		.tab-body {
			width: 150%;
			height: 600px;
			background-color:#EEFFFF;
		}
		.tab-body-item {
			display: none;
			height: 100%;
			text-align: center;
			line-height: 30px;
			font-size: 12px;
		}
		.tab-head-item.active {]
		    border-color: #000000;
			background-color: rgb(113, 198, 193);
		}
		.tab-body-item.active {
			display: block;
		}
		#ziti1{
		font-size:30px;
	
		}
		#ziti2{
		font-size:20px;
		}
	</style>
	<style>
		#xian img {
		 height:100px;
		 width:100px;
		 border:1px solid #ccc;
		 padding:2px;
		}
		#xian h3 {
		 font-size:12px;
		 color:#09c;
		 line-height:2em;
		}
		#xian p {
		 font-size:12px;
		 text-indent:2em;
		 line-height:1.5em;
		}
		#xian container {
		 width:300px;
		 margin:0 auto;
		 margin-top:10px;
		 padding-right:3px;
		 border:1px dotted #666;
		 position:relative;
		}
		#xian leftContent {
		 position:absolute;
		 top:4px;
		 left:4px;
		}
		#xian rightContent {
		 margin-left:120px;
		}
</style>
		<script>
			window.addEventListener('load', function() {
				var activeIndex = 0;
				var tabHead = document.getElementsByClassName('tab-head')[0];
				var activeTab = function(idx) {
					if (idx == activeIndex) return;
					var headItems = document.getElementsByClassName('tab-head-item');
					var bodyItems = document.getElementsByClassName('tab-body-item');
					idx = idx < headItems.length ? idx : 0;
					headItems[activeIndex].className = headItems[activeIndex].className.replace(/\sactive/, '');
					bodyItems[activeIndex].className = bodyItems[activeIndex].className.replace(/\sactive/, '');
					headItems[idx].className += ' active';
					bodyItems[idx].className += ' active';
					activeIndex = idx;
				};
				tabHead.addEventListener('mouseover', function(e) {
					var target = e.target,
						idx = 0,
						len = this.children.length;
					if (!/^tab-head-item/.test(target.className))
						return;
					for (; idx < len; idx++) {
						if (this.children[idx] === target)
							break;
					}
					activeTab(idx);
				});
				var init = /(?:^\?|&)init(?:\=)(\d+)(?=&|$)/.exec(location.search);
				init = init && init[1] || 0;
				activeTab(init);
			});
		</script>
		<script language="JavaScript">
			var regel = 0;            //row to start with
			var size = 20;            //size of font
			var delay = 1200;         //Delay between messages in msecs
			var speed = 20;            //Hmmmmmm
			var step = 5;            //Size of each step
			var sent = new Array()
			{
			sent[0] = "欢迎光临武汉";
			sent[1] = "武汉是国家历史文化名城、楚文化的重要发祥地，境内盘龙城遗址有3500年历史";
			sent[2] = "春秋战国以来，武汉一直是中国南方的军事和商业重镇，明清时期成为“楚中第一繁盛处”、“天下四聚”之一";
			sent[3] = "清末洋务运动促进了武汉工商业兴起，使其成为近代中国重要的经济中心，被誉为“东方芝加哥”";
			sent[4] = "武汉是中国民主革命的发祥地，武昌起义作为辛亥革命的开端，具有重要历史意义 ";
			sent[5] = "武汉自然风光独特，四季气候分明，拥有其他大都市罕有的166个湖泊和众多山峦";
			sent[6] = "武汉的人文景观具有浓郁的楚文化特色"
			}
			
			sent[sent.length] = sent[0];var veran = 0;var num = 0;var x = 0;//Don't change
			function moto(){output = "";for(letter = 0;letter<sent[regel+1].length;letter++){
			if(veran == letter){if(x==0){num=num+step;}else{num=num-step;}gr = size-num;
			if(gr < 1){x=1;gr=1;}if(gr>size)gr=size;
			output += "<font style='font-size:"+gr +"pt'>"+sent[regel+x].substring(letter, letter+1)+"</font>";
			if(num < 0 && x==1){veran++;x=0;}}else{if(veran > letter){
			output += "<font style='font-size:"+size +"pt'>"+sent[regel+1].substring(letter, letter+1)+"</font>";
			}else{output += "<font style='font-size:"+size +"pt'>"+sent[regel].substring(letter, letter+1)+"</font>";}}}
			return output;}function startmot(){if(regel==sent.length-1)regel=0;balk.innerHTML = moto();
			if(veran==sent[regel+1].length){regel++;veran = 0;setTimeout("startmot()", delay);}else{
			setTimeout("startmot()", speed);}}
		</script>
</head>
<body onload="startmot()">
	<table style="cursor:hand" onclick="location='mailto:webmaster@alixixi.com'" align="center" id="tafel" bgcolor="#008000" width="80%" height="100">
	  <tr>
	    <td bgcolor="white">
	      <div class="let" ID="balk" align="center">
	      </div>
	    </td>
	  </tr>
	</table>
	<div id="la">
	   <ul>
		   <li> <img src="./images/02.jpg" alt="Iron Man 1" width="300" />
			  <div class="info">
				 <h2>最高试用率</h2>
				 <p>“江南三大名楼”之一</p>
			  </div>
		   </li>
		   <li> <img src="./images/04.jpg" alt="Iron Man 2" width="300"/>
			  <div class="info">
				 <h2>最受欢迎</h2>
				 <p>复合型、生态型和创新型的大型文化旅游胜地</p>
			  </div>
		   </li>
		   <li> <img src="./images/05.jpg" alt="Iron Man 3" width="300"/>
			  <div class="info">
				 <h2>最美丽 </h2>
				 <p>武汉东湖磨山樱园被称为世界三大樱花之都</p>
			  </div>
		   </li>
	   </ul>
	</div>
<div class="container">
					<div class="col-lg-12col-md-12 col-sm-12 col-xs-12 right-content">	
						<div class="news-list">
						
						<c:if test="${empty requestScope.str }">
				    		没有数据！！
			  				  </c:if>
							<c:if test="${!empty requestScope.str }">
							<tbody>
								<c:forEach items="${requestScope.str }" var="str1">	
							<div class="row">
								<div class="col-lg-4 col-md-4 col-sm-4 news-pic">
									<img src="images/${str1.str_image}" style="width:230px; height:130px;" alt="" class="img-responsive center-block">
								</div>
								<div class="col-lg-8 col-md-8 col-sm-8 news-text">
									<h3>${str1.str_title}</h3>
									<p>推荐时间：${str1.str_rectime }</p>
									<p>
									${str1.str_simpleinfo }
									</p>
									<button class="md-trigger" data-modal="modal-4">阅读全文</button>
									<div class="md-modal md-effect-4" id="modal-4">
										<div class="md-content">
											<h3>${str1.str_title}</h3>
											<div>
												<p>${str1.str_info }</p>
												<button class="md-close">点击关闭</button>
											</div>
										</div>
									</div>
									<script src="js/classie.js"></script>
									<script src="js/modalEffects.js"></script>
									<script>
										var polyfilter_scriptpath = '/js/';
									</script>
									<div>
										<span><i class="glyphicon glyphicon-eye-open"></i>${str1.str_views } </span>
										<span class=""><i class="glyphicon glyphicon-heart"></i> ${str1.str_zan } </span>
										<span class="pull-right"><i class="glyphicon glyphicon-time"></i>${str1.str_zan}</span>
									</div>
								</div>
							</div>
							</c:forEach>
							
							</tbody>
							</c:if>
						</div>
							
							<!--分页-->
							<center>
			
					<nav aria-label="Page navigation" class="page-box">
							<ul class="pagination">
							<c:if test="${pages.hasPrev }">
									<li>
										<a href="attraction/viewAtts?pageNow=1" aria-label="Previous">
											<span aria-hidden="true">首页</span>
										</a>
									</li>
									<li class="active">
										<a href="attraction/viewAtts?pageNow=${pages.prevPage  }">上一页</a>
									</li>
									</c:if>
									<c:if test="${pages.hasNext }">
							<li class="active">
										<a href="attraction/viewAtts?pageNow=${pages.prevPage  }">下一页</a>
									</li>
									<li>
										<a href="attraction/viewAtts?pageNow=${pages.totalPageNumber}" aria-label="Next">
											<span aria-hidden="true">尾页</span>
										</a>
										
									</li></c:if>
							转到 <input type="text" size="1" id="pageNow"/> 页
						</ul>
							</nav>
							
						</center>
						</div>
					</div>
				</div>
			
	<!--footer-starts-->
		<jsp:include page="../../footer.jsp"></jsp:include>


<script type="text/javascript">
		$(document).ready(function() {
			
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>

</html>



