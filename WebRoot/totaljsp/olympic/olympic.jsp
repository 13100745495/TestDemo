<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.springframework.web.context.request.RequestScope"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
 <base href="<%=basePath%>">
<title>最美武汉</title>
<link rel="icon" type="image/png" href="images/sitelogo.png" />
<link rel="stylesheet" type="text/css" href="css/olstyle.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/settings.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/olcontent.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jbootstrap.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/jquery.cssAnimate.mini.js"></script>
<script type="text/javascript" src="js/jquery.touchwipe.min.js"></script>
<script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>
<script type="text/javascript" src="js/jquery.themepunch.services.min.js"></script>
<link href='css/olcss.css' rel='stylesheet' type='text/css'>
<jsp:include page="../../header.jsp"></jsp:include>
<style>
/*
	用来对齐 "显示更多" 按钮的布局
*/
	#MTextAre{
		width:100%;
		height:120px;
	}
</style>
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
<div class="example-wrapper" style="margin-top:10px;">
	<div id="services-example-1" class="theme1">
		<ul>
			<!--
			#############
			-	SLIDE 1	-
			#############
			-->
			<li>
			<img class="thumb" src="images/04.jpg" width="195px">
				<div style="margin-top:16px"></div>
					<div id="MTextAre">
						<h2>欢乐谷</h2>
						<div><p>世界一流的游乐设备、丰富多彩的演艺项目、精彩纷呈的主题文化节庆活动让武汉欢乐谷成为“时尚、动感”的繁华都市开心地</p></div>
					</div>
					<div id="buttomLocation"><a class="buttonlight morebutton" href="#">查看更多</a>
				</div>
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more"> <img class="big-image" width="45%" height="35%" src="images/04.jpg">
					<h3 align="center">欢乐谷介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p style="text-indent: 2em">世界一流的游乐设备、丰富多彩的演艺项目、精彩纷呈的主题文化节庆活动让武汉欢乐谷成为“时尚、动感”的繁华都市开心地。</p>
						<p style="text-indent: 2em">园区创新设置了100多项娱乐体验项目，包括亚洲首座双龙木质过山车“木翼双龙”、720度圆环过山车“凤舞九天”、弹射过山车“极速飞车”等30多项游乐体验设备，以及40多处生态人文景观、10多台文化演艺精品和20多项主题娱乐游戏，精彩诠释多元欢乐。</p>
					</div>
				
				</div>
			</li>
			<!--
			#############
			-	SLIDE 2	-
			#############
			-->
			<li> <img class="thumb" src="images/02.jpg" width="195px">
				<div style="margin-top:16px"></div>
				<div id="MTextAre"><h2>黄鹤楼</h2>
				<p>黄鹤楼在古代的大部分时间里都是作为观赏行旅 “游必于是”、“宴必于是”的观赏楼</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/02.jpg">
 					<h3 align="center">黄鹤楼</h3><br/>
					<div style="position:relative; right:1%;">
						<p style="text-indent: 2em">黄鹤楼在古代的大部分时间里都是作为观赏行旅 “游必于是”、“宴必于是”的观赏楼，因此不少名人墨客都曾驻足于此,或会朋聚友,或游览风光,留下了许多千古绝唱，并使黄鹤楼从此闻名遐迩。</p>
					</div>
					
				</div>
			</li>
			<!--
			#############
			-	SLIDE 3	-
			#############
			-->
			<li> <img class="thumb" src="images/11.jpg" width="195px">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>木兰花乡</h2>
					<p>花乡以湖泊花溪、乡野村落、花林田院为资源依托，以木兰文化为核心主题，将旅游区打造成以休闲度假为主导</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/11.jpg">
 					<h3 align="center">木兰花乡</h3><br/>
					<div style="position:relative; right:1%;">
						<p style="text-indent: 2em">花乡以湖泊花溪、乡野村落、花林田院为资源依托，以木兰文化为核心主题，将旅游区打造成以休闲度假为主导，集观光、娱乐、康体旅游于一体的重人文内涵、多功能、高品位的乡村生活体验区。使其成为武汉黄陂花卉旅游名片，木兰生态旅游区的重要组成节点。</p>
						<p style="text-indent: 2em">红的、黄的、紫的、绿的…在每一个节气，木兰花乡总会让你体验身在七彩世界的烂漫！在一排排而立的梯田之中，多种花卉品种五颜六色，争奇斗艳，形成一条条立体色块，就像一条五彩色带芳香天空，如同莫奈的油画，为土地，为你，妆点七彩人生。</p>
					</div>
			
				</div>
			</li>
			<!--
			#############
			-	SLIDE 4	-
			#############
			-->
			<li> <img class="thumb" src="images/12.jpg" width="195px">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>植物园</h2>
					<p>武汉植物园是华中地区丰富的植物物种多样性与种质资源保存基地，集科研与休闲观赏于一体，犹如一个美丽的四季田园</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/12.jpg">
 					<h3 align="center">植物园</h3><br/>
					<div style="position:relative; right:1%;">
						<p style="text-indent: 2em">武汉植物园是华中地区丰富的植物物种多样性与种质资源保存基地，集科研与休闲观赏于一体，犹如一个美丽的四季田园，并根据季节，定期开办花展，四时花开，各不相同。四季都适合游览。</p>
						<p style="text-indent: 2em">春天的到来，百花齐放，郁金香也闯出了一片天地，或红或白、或紫或黑，姹紫嫣红，香气四溢，引得蜜蜂、蝴蝶争相旋转，好不热闹。</p>
						<p style="text-indent: 2em">阴阴夏木,接天莲叶。在炎炎夏日，荷花悄然绽放，在绿叶的簇拥中，显得柔美而娇羞，即使站在外围远观，也不得不被荷花的美所折服。</p>
						<p style="text-indent: 2em">常常被作为玫瑰替身的月季，也是美得不一般，你能区分出月季和玫瑰吗？</p>
						<p style="text-indent: 2em">在我们从小的教育中，梅花被赋予了太多含义，“梅花香自苦寒来”的中国魂，在冰雪里轻轻绽放，满园的香气怡然，你能感受到梅花的品格吗？</p>
					</div>
			
				</div>
			</li>
			<!--
			#############
			-	SLIDE 5	-
			#############
			-->
			<li> <img class="thumb" src="images/13.jpg" width="195px">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>两江游览</h2>
					<p>武汉又称江城，是具有滨江滨湖特色的旅游城市，其中著名的当属长江,夜游长江是武汉非常出名的休闲项目</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/13.jpg">
 					<h3 align="center">两江游览</h3><br/>
					<div style="position:relative; right:1%;">
						<p style="text-indent: 2em">武汉又称江城，是具有滨江滨湖特色的旅游城市，其中著名的当属长江,夜游长江是武汉非常出名的休闲项目, 相比起武汉白日里的骄阳，夜晚则显得温柔得多，蜕下了白日里的焦灼烦恼，整个身心都安静了下来，让我们站在长江之上，欣赏另一面的江城。</p>
						<p style="text-indent: 2em">游船徐徐而行，景色缓缓而动。乘坐游船，欣赏长江两岸灯光熠熠，夜幕下的流光溢彩，还能看见夜色中的长江大桥和黄鹤楼，吹着习习凉风，欣赏着夜色美景，别有一番风味。</p>
					</div>
		
				</div>
			</li>
			<!--
			#############
			-	SLIDE 6	-
			#############
			-->
			<li> <img class="thumb" src="images/01.jpg" width="195px">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>花博会</h2>
					<p>武汉花博汇，坐落于蔡甸后官湖中法生态示范城。以大武汉“新花城”城市品牌为背景，以休闲需求为契机，深度植入泛旅游产业业态</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/01.jpg">
 					<h3 align="center">花博会</h3><br/>
					<div style="position:relative; right:1%;">
						<p style="text-indent: 2em">武汉花博汇，坐落于蔡甸后官湖中法生态示范城。以大武汉“新花城”城市品牌为背景，以休闲需求为契机，深度植入泛旅游产业业态，融合农业产业、休闲游憩、观光度假、主题文创等多元功能。</p>
						<p style="text-indent: 2em">构建“吃、住、行、游、购、娱、研、学、修”闭环链条，旨在打造华中区域特色旅游休闲基地、花主题旅居目的地、标准度假景区、田园综合体项目。</p>
					</div>

				</div>
			</li>
			<!--
			#############
			-	SLIDE 7	-
			#############
			-->
			<li> <img class="thumb" src="images/03.jpg" width="195px">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>万达汉秀</h2>
					<p>华灯初上，坐在静谧的湖畔，任凭对岸的那抹红肆意绽放。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/03.jpg">
 					<h3 align="center">万达汉秀</h3><br/>
					<div style="position:relative; right:1%;">
						<p style="text-indent: 2em">华灯初上，坐在静谧的湖畔，任凭对岸的那抹红肆意绽放。若不是它，我们也许在人群中走散；若不是它，我们也许不会因贪念这座新奇建筑的美而撞见彼此；若不是它，我们也许无法相识、相知、相恋。遇见它，燃起我们如火般的爱情。</p>
					</div>
					
				</div>
			</li>
			<!--
			#############
			-	SLIDE 8 -
			#############
			-->
			<li> <img class="thumb" src="images/05.jpg" width="195px">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>东湖磨山樱花园</h2>
					<p>东湖具有许多花木品种，较有名是樱花、荷花和梅花，还有杜鹃花、油菜花等等品种</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/05.jpg">
 					<h3 align="center">东湖磨山樱花园</h3><br/>
					<div style="position:relative; right:1%;">
						<p style="text-indent: 2em">东湖具有许多花木品种，较有名是樱花、荷花和梅花，还有杜鹃花、油菜花等等品种，花期盛开时，花儿们都静默而热烈的绽放着，为了不辜负花期美景，景区每年都会举办各种赏花节，不失为假日休闲的好去处。</p>
					</div>
		
				</div>
			</li>
			<!--
			#############
			-	SLIDE 9	-
			#############
			-->
			<li> <img class="thumb" src="images/06.jpg" width="195px">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>木兰天池</h2>
					<p>木兰天池景区面积13平方公里，主要由“浪漫山水”、“高峡人家”和“森林公园”三大主题景园链接成一个南北走向，长达十余公里的森林山水大峡谷。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/06.jpg">
 					<h3 align="center">木兰天池</h3><br/>
					<div style="position:relative; right:1%;">
						<p style="text-indent: 2em">木兰天池景区面积13平方公里，主要由“浪漫山水”、“高峡人家”和“森林公园”三大主题景园链接成一个南北走向，长达十余公里的森林山水大峡谷。</p>
					</div>
			
				</div>
			</li>
		</ul>
		<div class="toolbar">
			<div class="left"></div>
			<div class="right"></div>
		</div>
	</div>
</div>


<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row clearfix">
				<div class="col-md-6 column mv">
				<video src="mv/1.mp4" controls="controls" class="mvl" width="105%" height="78%"></video>
				</div>
				<div class="col-md-6 column rec">
					<img src="images/ly.gif" style="width: 500px;height: 250px">
				</div>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
$(function() {
	$.noConflict();
	jQuery('#services-example-1').services(
		{
			width:920,
			height:290,
			slideAmount:5,
			slideSpacing:30,
			touchenabled:"on",
			mouseWheel:"on",
			hoverAlpha:"off",
			slideshow:1500,
			hovereffect:"on",
			callBack:function() { }
		});
	jQuery('#services-example-2').services(
		{
			width:720,
			height:345,
			slideAmount:6,
			slideSpacing:20,
			touchenabled:"on",
			mouseWheel:"on",
			hoverAlpha:"off",
			slideshow:1500,
			hovereffect:"on",
			callBack:function() { }
		});
});
</script>
<jsp:include page="../../footer.jsp"></jsp:include>

</body>
</html>
