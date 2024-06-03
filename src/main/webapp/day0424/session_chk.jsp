<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<% 
String id = (String)session.getAttribute("name");
if(id == null){
	response.sendRedirect("http://192.168.10.218/day0424/use_session_a.jsp");
	return;
}
%>
