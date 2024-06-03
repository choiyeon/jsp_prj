<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="import를 사용한 다른페이지 끼워넣어 보여주기"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
<%
String dayTitle="일,월,화,수~목.금,토";
//EL에서 사용하기 위해 scope객체에 할당
pageContext.setAttribute("dayTitle", dayTitle);
%>
<c:out value="${ dayTitle }"/>
<hr>
<table class="table">
<tr>
<c:forTokens var="data" items="${ dayTitle }" delims=",~."><!-- ,로 구분 -->
<%-- <c:out value="${ data }"/> --%>
<td value="${ data }"><c:out value="${ data }"/></td>
</c:forTokens>
</tr>
</table>
</div>