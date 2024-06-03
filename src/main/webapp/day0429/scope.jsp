<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="scope객체 사용"%>
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
<%
String msg = "오늘은 월요일";
%>
<h2>EL에서는 변수를 직접접근할 수 없다.</h2><!-- scope에 할당 후 접근. -->
EL:${ msg }<br>
Expression:<%= msg %> <br>
<%
//EL에서 변수를 접근하려면 scope객체에 할당되어야하고, scope객체명으로 접근 가능.
//1. scope객체 할당
pageContext.setAttribute("m", msg);
%>
2. scope 객체를 사용한 접근 : <strong>${ m }</strong><br>
2. scope 객체를 사용한 접근 : <strong>${ pageScope.m }</strong><br><!-- 결과 같음 -->
<hr>
<%
//1. scope객체에 값 할당
pageContext.setAttribute("pageName", "김동섭");
request.setAttribute("reqName", "정명호");
session.setAttribute("sesName", "진수현");
application.setAttribute("apliName", "최수연");
// ----------------------------------------------------
pageContext.setAttribute("Name", "김동섭");
request.setAttribute("Name", "정명호");
session.setAttribute("Name", "진수현");
application.setAttribute("Name", "최수연");
%>
<ul>
<li>pageScope : ${ pageScope.pageName }( ${ pageName } )</li>
<li>requestScope : ${ requestScope.reqName }( ${ reqName } )</li>
<li>sessionScope : ${ sessionScope.sesName }( ${ sesName } )</li>
<li>applicationScope : ${ applicationScope.apliName }( ${ apliName } )</li>
<li>------------------------------------------------</li>
<li>pageScope : ${ Name }( ${ Name } )</li>
<li>requestScope : ${ Name }( ${ Name } )</li>
<li>sessionScope : ${ Name }( ${ Name } )</li>
<li>applicationScope : ${ Name }( ${ Name } )</li>
<li>${ Name } 사용범위가 가장 좁은 것부터 나옴</li>
</ul>
</div>
</body>
</html>