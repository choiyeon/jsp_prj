<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
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
	
</style>

<script type="text/javascript">
	$(function(){
		
	});//ready
</script>

</head>
<body>
<div>
<!-- 
scope
-page : 이 페이지를 요청할때 마다 생성, 생성된 객체는 해당 JSP에만 사용.
-request : 이 페이지를 요청할 때 마다 생성, 생성된 객체 해당 JSP와 forwoard로 이동한 JSP에서 사용가능.
-session : 브라우저마다 하나의 객체생성, 모든 JSP에서 독립적으로 사용된다.
-application : 최초 접속자에 의해 하나의 객체만 생성되고, 생성된 객체는 모든 접속자가 공유하여 사용하고, 
				모든 페이지에서 객체를 사용할 수 있다.

-->
<!-- 객체생성 -->
<jsp:useBean id="cVO" class="day0426.counterVO" scope="session"/>
<!-- setter method 호출 -->
<jsp:setProperty property="cnt" name="cVO" value="1"/>
<!-- getter method 호출 -->
이 페이지의 <strong><jsp:getProperty property="cnt" name="cVO"/></strong>
번째 방문자.<br/>

<% log(request.getRemoteAddr()); %>
<a href="http://192.168.10.218/jsp_prj/day0426/counter.jsp">요청</a><br/>

<a href="counter2.jsp">링크 이동</a>
</div>
</body>
</html>