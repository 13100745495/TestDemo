<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.springframework.web.context.request.RequestScope"%>
<!doctype html>
<html>
<head>
<title>景点介绍</title>
<base href="<%=basePath%>">

	<link href="css/lunbo.css" rel="stylesheet"/>
	<link href='css/fangda.css' rel='stylesheet'>
	<link href="css/bootstrap.css" rel="stylesheet">
	<script src='js/intense.js'></script>
	<script type="text/javascript" src="js/lunbo.js" ></script>
	<script>
		window.onload = function() {
		var elements = document.querySelectorAll( '.demo-image' );
		Intense( elements );
		}
	</script>
	<style>
		.container{
           margin-left:10%;
	   }
	</style>
	<jsp:include page="../../header.jsp"></jsp:include>
</head>
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
<body>							   
    <!--about-starts--> 
	<div class="about">
		<div class="container">
			<div class="about-top heading">
				<center><h4>武汉旅游景点众多，旅游资源丰富，来一起领略一下吧</h4></center>
					<p style="text-indent: 2em">武汉一直以来都是我国最豪华的一座大都市，武汉的经济发展水平也是较快的，而且地理和人文环境也都很多，武汉城市都是灯红酒绿灯车水马龙，各种商店商铺酒吧也是多的数不清，但是武汉不仅仅是有这些繁华奢侈的场所，还有很多旅游景点，我们来了解一下武汉十大旅游景点。
						武汉十大旅游景点:武汉长江大桥、武汉江滩、东湖风景区、武汉大学、黄鹤楼、江汉路步行街、户部巷、汉秀剧场、木兰天地、武汉欢乐谷</p>				
				<div id="lun" style="width:80%;" >
					<ul>
						<li class="active" ><img style="height:450px;" src="./images/07.jpg" alt=""></li>
						<li><img style="height:450px;" src="images/01.jpg" alt=""></li>
						<li><img style="height:450px;" src="images/02.jpg" alt=""></li>
						<li><img style="height:450px;" src="images/03.jpg" alt=""></li>
						<li><img style="height:450px;" src="images/04.jpg" alt=""></li>
						<li><img style="height:450px;" src="images/05.jpg" alt=""></li>
						<li><img style="height:450px;" src="images/06.jpg" alt=""></li>	
					</ul>
					<div id="num_list"   >
						<ul >
							<li><span class="active_num">1</span></li>
							<li><span>2</span></li>
							<li><span>3</span></li>
							<li><span>4</span></li>
							<li><span>5</span></li>
							<li><span>6</span></li>
							<li><span>7</span></li>
						</ul>
				</div>
	</div>
	<script type="text/javascript" src="js/lunbo.js"></script>	
	
	<div id="map">
	<img src="images/it.png" /></div>
			<div class="about-bottom" style="padding-top: 150px">
				<c:if test="${empty requestScope.atts }">
    			没有数据！！
  		 		 </c:if>
					<c:if test="${!empty requestScope.atts }">
					<tbody>
					<c:forEach items="${requestScope.atts }" var="att">
					<div class="col-md-4 about-left" style="width: 100%;height: 250px">
					<img src="images/${att.a_picture}" style="width:33.3%;height:220px;float: left;">
						<%-- <section class="demos">
							<div style="width:33.3%;height:220px; background-image: url('images/${att.a_picture}');background-size: 100% 100%;"  data-image="images/${att.a_picture}" data-title="${att.a_infotitle} "  data-caption="${att.a_simpleinfo}"></div>
						</section> --%>
						<h5 style="padding-left: 400px">${att.a_name }</h5>
						<p style="text-indent: 2em;padding-left: 400px">${att.a_info }</p>
						<h3 style="padding-left: 950px;padding-top: 10px">200元</h3>
						<p style="padding-left: 960px;"><a onclick="fun();">立即购买</a></p>
					</div>
					</c:forEach>
					</tbody>
					</c:if>
					<div class="clearfix"> </div>
				</div>
			</div>
			<script type="text/javascript">
				function fun() {
					var con = confirm("确认购买");
					if (con == true) {
						alert("购买成功");
					}
				}
			</script>
			
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
					
			
<!--footer-starts-->
		<jsp:include page="../../footer.jsp"></jsp:include>
			
<script type="text/javascript">
		$(document).ready(function() {
			
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!----> 
	</body>
</html>
