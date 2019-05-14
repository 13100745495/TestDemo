<%@ page language="java" import="java.util.*,com.zjk.model.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head >
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>旅游网首页</title>
	<base href="<%=basePath%>">
	<link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/jquery.min.js" ></script>
	<script type="text/javascript" src="js/bootstrap.js" ></script>
	<jsp:include page="header.jsp"></jsp:include>
	</head>
	<body>
		 <script>
				$("span.menu").click(function(){
					$(".top-nav ul").slideToggle("slow" , function(){
					});
				});
		 </script>
<div class="banner">
<script src="../../js/responsiveslides.min.js"></script>
</div>	
<div class="banner-bottom-strip">
	<div class="container">
		<h3>武汉旅游介绍</h3>
		<p style="text-indent: 2em">武汉是国家历史文化名城、楚文化的重要发祥地，境内盘龙城遗址有3500年历史。春秋战国以来，武汉一直是中国南方的军事和商业重镇，明清时期成为“楚中第一繁盛处”、“天下四聚”之一。
		清末洋务运动促进了武汉工商业兴起，使其成为近代中国重要的经济中心，被誉为“东方芝加哥”。武汉是中国民主革命的发祥地，武昌起义作为辛亥革命的开端，具有重要历史意义。</p>
		<p style="text-indent: 2em">武汉是首批中国优秀旅游城市，每年举办武汉国际旅游节。武汉自然风光独特，四季气候分明，拥有其他大都市罕有的166个湖泊和众多山峦。武汉的人文景观具有浓郁的楚文化特色。 
			截至2017年末，武汉市有国家A级旅游景区39个，其中5A级3个，4A级16个，3A级20个。</p>
	</div>
</div>	
<link rel="stylesheet" href="css/swipebox.css"/>
	<script src="js/jquery.swipebox.min.js"></script> 
	    <script type="text/javascript">
			jQuery(function($) {
				$(".swipebox").swipebox();
			});
</script>
<!--works end here-->
<!--effect-gird-->
<div class="container">
<div class="grid">
	<h4>美景先看</h4>
		<figure class="effect-julia">
			<img src="images/01.jpg" alt="img21"/>
			<figcaption>
				<h2><span>花博会</span></h2>
				<div>
					 <p>武汉花博汇，坐落于蔡甸后官湖中法生态示范城。以大武汉“新花城”城市品牌为背景，以休闲需求为契机，深度植入泛旅游产业业态，融合农业产业、休闲游憩、观光度假、主题文创等多元功能，构建“吃、住、行、游、购、娱、研、学、修”闭环链条，旨在打造华中区域特色旅游休闲基地、花主题旅居目的地、标准度假景区、田园综合体项目。</p>
				</div>	
			</figcaption>		
		</figure>
		<figure class="effect-julia">
			<img src="images/02.jpg" alt="img22"/>
			<figcaption>
				<h2><span>黄鹤楼</span></h2>
					<div>
						<p>黄鹤楼在古代的大部分时间里都是作为观赏行旅 “游必于是”、“宴必于是”的观赏楼,因此不少名人墨客都曾驻足于此,或会朋聚友,或游览风光,留下了许多千古绝唱，并使黄鹤楼从此闻名遐迩。</p>
					</div>		
				</figcaption>			
		</figure>
		<figure class="effect-julia">
			<img src="images/03.jpg" alt="img21"/>
			<figcaption>
				<h2> <span>武汉万达汉秀</span></h2>
					<div>
						<p>华灯初上，坐在静谧的湖畔，任凭对岸的那抹红肆意绽放。若不是它，我们也许在人群中走散；若不是它，我们也许不会因贪念这座新奇建筑的美而撞见彼此；若不是它，我们也许无法相识、相知、相恋。遇见它，燃起我们如火般的爱情。</p>
					</div>		
			</figcaption>			
		</figure>
		<figure class="effect-julia">
			<img src="images/04.jpg" alt="img22"/>
			<figcaption>
				<h2><span>欢乐谷</span></h2>
					<div>
						<p>世界一流的游乐设备、丰富多彩的演艺项目、精彩纷呈的主题文化节庆活动让武汉欢乐谷成为“时尚、动感”的繁华都市开心地。园区创新设置了100多项娱乐体验项目，包括亚洲首座双龙木质过山车“木翼双龙”、720度圆环过山车“凤舞九天”、弹射过山车“极速飞车”等30多项游乐体验设备，以及40多处生态人文景观、10多台文化演艺精品和20多项主题娱乐游戏，精彩诠释多元欢乐。</p>	
					</div>
			</figcaption>			
		</figure>
		<figure class="effect-julia">
			<img src="images/05.jpg" alt="img22"/>
			<figcaption>
				<h2> <span>东湖磨山樱花园</span></h2>
					<div>
						<p>东湖具有许多花木品种，较有名是樱花、荷花和梅花，还有杜鹃花、油菜花等等品种，花期盛开时，花儿们都静默而热烈的绽放着，为了不辜负花期美景，景区每年都会举办各种赏花节，不失为假日休闲的好去处。</p>	
					</div>
			</figcaption>			
		</figure>
		<figure class="effect-julia">
			<img src="images/06.jpg" alt="img22"/>
			<figcaption>
				<h2> <span>木兰天池</span></h2>
					<div>
						<p>木兰天池景区面积13平方公里，主要由“浪漫山水”、“高峡人家”和“森林公园”三大主题景园链接成一个南北走向，长达十余公里的森林山水大峡谷。</p>	
					</div>		
			</figcaption>			
		</figure>
		<div class="clearfix"> </div>
	</div>
</div>
<!--footer-starts-->
	<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</body>
</html>
