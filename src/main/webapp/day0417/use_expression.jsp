<%@page import="day0417.DataVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="표현식의 사용"%>
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
	td{border:1px solid #333; width:200px; height: 40px; text-align: center;}
	
	td:hover{
	background: gray;
	}
</style>

<script type="text/javascript">
	$(function(){
		$("#data").change(function(){
			var sel=$("#data")[0];
			if(sel.selectedIndex !=0){
				if(confirm(sel.value + "로 이동하시겠습니까?")){
					location.href = sel.value;
				}
			}
		});
	});//ready
	
	function print(i, j, result) {
		alert(i + " x " + j + " = " + result);//서버에서 일함
	}
	function print2(i, j) {
		alert(i + " x " + j + " = " + (i*j));//접속자 컴퓨터에서 일함
	}
</script>

</head>
<body>
<div>
<% 
String msg="피곤타";
String msg2="피곤타222222222";
%>
<%-- <%= msg , msg2%> 표현식은 out.print()로 코드가 변환되며 
JspWriter의 print() method는 매개변수가 하나로만 Overload되어있다. 
--%><br/>
<%= msg %><br><%= msg2 %>
<hr>

<table>
<% for(int i=1; i<10; i++){ %>

<tr>
<%-- 	<td onclick="alert(' <%= 2*i %> ')">2 X <%= i %> = <%= 2*i %></td> --%>
<td onclick="print(2, <%= i %>, <%= 2*i %>)">2 X <%= i %> = <%= 2*i %></td>
<td onclick="print2(2, <%= i %> )">2 X <%= i %> = <%= 2*i %></td>
</tr>

<%	}//end for %>
</table>

<hr>
<%
DataVO[] data = new DataVO[5];
data[0] = new DataVO("김동섭", "http://danawa.com","danawa.png");
data[1] = new DataVO("진수현", "http://youtube.com","youtube.png");
data[2] = new DataVO("윤웅찬", "http://google.com", "google.png");
data[3] = new DataVO("홍성강", "http://www.coupang.com", "coupang.png");
data[4] = new DataVO("김병년", "http://sist.co.kr", "sist.png");
%>
<select id="data">
<option>===선택하세요===</option>
<% for(int i=0; i<data.length; i++){ %>
<option value="<%= data[i].getUrl() %>"><%= data[i].getName() %></option>
<% } %>
</select>

<hr>

<table>

<tr>
<th>이름</th>
<th>자주방문하는 사이트</th>
</tr>


<% for(int i=0; i<data.length; i++){ %>
<tr>
<td><%= data[i].getName() %></td>
<td onclick="location.href='<%= data[i].getUrl() %>'"><%-- <a href="<%= data[i].getUrl() %>"><img a태그 쓸 때는 >뒤에 공백이 있으면 안됨. --%> 
<img src="images/<%= data[i].getImg() %>"/></td>
</tr>
<% } %>

</table>

<hr>
<table>
<% for(int i=1; i<10; i++){ %>
		<tr>
	<%	for(int j=2; j<10; j++){ %>
		<td><%= j %> X <%= i %> = <%= i*j %></td>
	<% }//end for %>
		</tr>
<% }//end for %>
</table>
</div>
</body>
</html>