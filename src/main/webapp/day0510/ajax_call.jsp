<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="AJAX사용"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		$("#btnHtml").click(function(){
			$.ajax({
				url : "http://192.168.10.218/day0510/response_html.jsp",
				type : "GET",
				async : true,
				dataType : "HTML",
				error : function(xhr){
					alert(xhr.status + " / " + xhr.statusText);
				},
				success : function(data){//응답된 HTML이 들어온다.
					//화면 일부분을 갱신하여 보여준다.
					$("#output").html(data);
				}
			});
		});
		$("#btnText").click(function(){
			//http://192.168.10.218/day0510/response_text.jsp
			$.ajax({
				url : "response_text.jsp",
				type : "GET",
				dataType : "TEXT",
				error : function(xhr){
					alert(xhr.status + " / " + xhr.statusText);
				},
				success : function(data){//응답된 text가 들어온다.
					var nameArr = data.split(",");
					var output="<ul>";
					$.each(nameArr, function(i, name){
						output += "<li>"+name+"</li>";
					});
					output+="</ul>";
					//$("#output").text(output); 가능
					$("#output").html(output);
				}
			});
		});
		$("#btnXml").click(function(){
			$.ajax({
				url:"response_xml.jsp",
				type : "GET",
				dataType : "XML",
				error : function(xhr){
					$("#output").html("<strong>" + xhr.status + "</strong>");
				},
				success : function(data){
					//XML은 parsing해서 사용한다.
					var nameNodes = $(data).find("name");
					var output="";
					$.each(nameNodes, function(i, nameNodes){
						output += "<h" + (i+1) + ">" + $(nameNodes).text() + "</h"+(i+1)+">";
					});
					$("#output").html(output);
				}
			});
		});
		$("#btnJSON").click(function(){
			$.ajax({
				url : "response_json.jsp",
				type : "POST",
				dataType : "JSON",
				error : function(xhr){
					alert(xhr.status);
				},
				success : function(data){
					$("#name").val(data.name)//파싱(이름.값)
					$("#age").val(data.age)
					$("#hobby").val(data.hobby)
				}
			});
		});
	});//ready
</script>

</head>
<body>
<div>
<div>
<input type="button" value="HTML요청" class="btn btn-success btn-sm" id="btnHtml"/>
<input type="button" value="TEXT요청" class="btn btn-success btn-sm" id="btnText"/>
<input type="button" value="XML요청" class="btn btn-success btn-sm" id="btnXml"/>
<input type="button" value="JSON요청" class="btn btn-success btn-sm" id="btnJSON"/>
</div>
<div id="output"></div>
<label>이름</label>
<input type="text" name="name" id="name"/><br>
<label>나이</label>
<input type="text" name="age" id="age"/><br>
<label>취미</label>
<input type="text" name="hobby" id="hobby"/><br>
</div>
</body>
</html>