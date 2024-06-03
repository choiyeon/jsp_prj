<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="외부라이브러리를 사용한  json"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String name = "박시현";
int age = 20;
//1. JsonObject생성
JSONObject jsonObj = new JSONObject();
//2.값할당
jsonObj.put("name", name);
jsonObj.put("age", age);
jsonObj.put("addr", "서울시 강남구 역삼동");
//3.문자열 반환
String str = jsonObj.toJSONString();
%>
<%= str %>