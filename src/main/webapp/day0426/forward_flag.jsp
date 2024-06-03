<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="server name을 식별하여 페이지 분기"%>

<%
request.setCharacterEncoding("UTF-8");
String serverName = request.getServerName();

String url = "kor.jsp";
String language="한국어";

if( !"localhost".equals(serverName)){
	url="eng.jsp";
	language="english";
}
%>
<%-- 이전 페이지의 web parameter만 전송 <jsp:forward page="<%= url %>"/> --%>
<!-- 이전 페이지의 web parameter와  JSP의 변수를 parameter로 만들어서 전송 -->
<jsp:forward page="<%= url %>">
<jsp:param name="lang" value="<%= language %>"/>
