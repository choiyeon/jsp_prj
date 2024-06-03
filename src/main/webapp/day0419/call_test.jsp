<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="HTML에서 JSP를 GET, POST방식으로 요청하는 페이지"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://192.168.10.218/jsp_prj/common/favicon.ico"/>
<!--bootstrap 시작-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--bootstrap 끝-->

<link rel="stylesheet" href="http://192.168.10.218/jsp_prj/common/css/main.css" type="text/css" media="all" />
<link rel="stylesheet" href="http://192.168.10.218/jsp_prj/common/css/board.css" type="text/css" media="all" />

<!--jQuery CDN 시작-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jQuery CDN 끝-->

<style type="text/css">
	#wrap{width:800px; height:400px; margin:0px auto}
	#get{width:398px; height:398px; float: left; border:1px solid #333}
	#post{width:398px; height:398px; float: right; border:1px solid #333}
	
	ul,ol,li{list-style: none; padding: 0px;}
</style>

<script type="text/javascript">
	$(function(){
		$("#a").click(function(){
			location.href="call.jsp";
		});//click
		
		$("#btnGet").click(function(){
			var txt=$("#text").val();
			if(txt !== "장원영"){
				alert("전송하지 않습니다!!");
				return;
			}//end
			$("#frmGet").submit();
		});//click
		
		$("#btnPost").click(function(){
			$("#frmPost").submit();
		});
	});//ready
</script>

</head>
<body>
<div id="wrap">
	<div id="get">
	<h3>GET방식으로 JSP 요청!</h3>
	<ul>
		<li>링크 : <a href="call.jsp">call.jsp 요청</a></li>
		<li>location : <a href="#void" id="a">location 요청</a></li>
		<li>
		<form action="call.jsp" method="get" id="frmGet"><!-- method속성은 get이 기본값 -->
		<input type="text" name="text" id="text"/><br/>
<!-- 		<input type="submit" value="form 요청" id="btnGet"/> -->
		<input type="button" value="form 요청" id="btnGet"/>
		</form>
		</li>
	</ul>
	</div>
	<div id="post">
	<h3>POST방식으로 JSP 요청!</h3>
	<form action="call.jsp" method="post" id="frmPost"><!-- method속성은 get이 기본값 -->
		<input type="button" value="form 요청" id="btnPost"/>
	</form>
	</div>

</div>
</body>
</html>