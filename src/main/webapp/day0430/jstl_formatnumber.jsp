<%@page import="day0430.FmtVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day0417.DataVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<%
	List<FmtVO> list = new ArrayList<FmtVO>();
	list.add(new FmtVO("윤웅찬", "google.com에서 챗지피티를 검색하여 다양한 문제를 ai에 의존하여 해결.", 
			"../common/images/img.jpg", 23000));
	list.add(new FmtVO("차차", "빨간망토 차차", 
			"../common/images/img1.png", 320000));
	list.add(new FmtVO("차차2", "빨간망토 차차222222", 
			"../common/images/img2.png", 5000));
	pageContext.setAttribute("list", list);
%>
<div style="width: 900px">
<c:forEach var="fVO" items="${ list }" varStatus="i">
<div class="card" style="width: 290px; height:290px; float:left">
  <img src="${ fVO.img }" class="card-img-top" alt="..." style="width: 100px; height: 100%">
  <div class="card-body">
    <h5 class="card-title"><c:out value="${ fVO.name }"/> </h5>
    <p class="card-text"><c:out value="${ fVO.url }"/><br/>
    
    </p>
    <a href="#" class="btn btn-primary">
    <fmt:formatNumber value="${ fVO.price}" pattern="000,000,000"/>원</a>
    <a href="#" class="btn btn-primary">
    <fmt:formatNumber value="${ fVO.price}" pattern="###,###,###"/>원</a>
  </div>
</div>
</c:forEach>
</div>
</body>
</html>