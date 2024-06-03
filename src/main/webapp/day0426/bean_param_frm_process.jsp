<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="jsp:useBean액션으로 web parameter 받기"%>
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
request.setCharacterEncoding("UTF-8");
%>
<!-- 객체생성 -->
<jsp:useBean id="memberVO" class="day0426.ParamVO" scope="page"/>
<!-- 웹 파라메터 받아서 VO객체에 설정 전체*-->
<jsp:setProperty property="*" name="memberVO"/>

<%-- <%= memberVO %> --%>
<h4>회원가입 완료 ㄱㅅㄱㅅ</h4>
입력하신 정보는 아래와 같습니다.<br/>

<ul>
<li>ID : <jsp:getProperty property="id" name="memberVO"/></li>
<li>비밀번호 : <jsp:getProperty property="password" name="memberVO"/></li>
<li>이름 : <jsp:getProperty property="name" name="memberVO"/></li>
<li>전화번호 : <jsp:getProperty property="tel" name="memberVO"/></li>
<li>휴대폰 : <jsp:getProperty property="cell" name="memberVO"/></li>
<li>수신여부 : <jsp:getProperty property="issms" name="memberVO"/>
		<%= memberVO.getIssms()==null?"수신안함":"수신함" %>
</li>
<li>이메일 : <jsp:getProperty property="email" name="memberVO"/></li>
<li>생년월일 : <jsp:getProperty property="birthday" name="memberVO"/></li>
<li>점심식사 : <jsp:getProperty property="lunch" name="memberVO"/>
			<br>
			<%
			String[] lunch = memberVO.getLunch();
			if(lunch == null){
			%>
			다이어트 중이세요?
			<%
			}else{
				for(String temp : lunch){
					%><%= temp %>&nbsp;<%
				}//end for
			}//end else
			%>
</li>
</ul>
</div>
</body>
</html>