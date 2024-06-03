<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"
    info="json 응답"%>
<%
JSONObject jsonObj = new JSONObject();
jsonObj.put("name","윤웅찬");
jsonObj.put("age","20");
jsonObj.put("hobby","농구");
%>
<%= jsonObj.toJSONString() %>