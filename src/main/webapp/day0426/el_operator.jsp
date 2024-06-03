<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
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
<h3>EL에서 사용가능한 연산자</h3>
<%
int i=4;
boolean flag= false;
String s = null;
String s2="";//String s2=new String()
List<String> list = new ArrayList<String>();

//EL에서 변수를 사용할려면 scope객체에 할당하고, scope객체명으로 변수를 사용. 교실에 사람 ㅈㄴ게 없누
pageContext.setAttribute("i", i);
pageContext.setAttribute("flag", flag);

pageContext.setAttribute("s", s);
pageContext.setAttribute("s2", s2);
pageContext.setAttribute("list", list);

%>
<ul>
<li>단항</li>
<li>${ i } ${ flag }</li>
<li>${ not flag } ${ !flag }</li>
<li>${ -i }</li>
<li>산술</li>
<li>${i} + 26 = ${ i+26 }</li>
<li>${i} % 2 = ${ i%2 }(${i mod 2 })</li>
<li>관계</li>
<li>${i} &gt; 3 = ${ i>3 }(${i gt 3 })</li>
<li>${i} &lt; 5 = ${ i<5 }(${i lt 5 })</li>
<li>${i} &gt;= 4 = ${ i>=4 }(${i ge 4 })</li>
<li>${i} &lt;= 5 = ${ i<=5 }(${i le 4 })</li>
<li>${i} == 4 = ${ i==4 }(${i eq 4 })</li>
<li>${i} == 5 = ${ i==5 }(${i eq 5 })</li>
<li>${i} != 5 = ${ i!=5 }(${i ne 5 })</li>
<li>논리</li>
<li>${i} >= 0 && ${ i } &lt; 10 = ${ i>0 && i < 10 }( ${ i gt 0 and i lt 10 } )</li>
<li>${i} >= 0 || ${ i } &lt; 10 = ${ i>0 || i < 10 }( ${ i gt 0 or i lt 10 } )</li>
<li>삼항</li>
<li>${ i }는 ${ i %2 ==0?"짝수":"홀수" }( ${ i mod 2 eq 0?'짝수':'홀수' })</li>
<li>empty</li>
<li>null은 출력하지 않는다. ( ${ empty s } )</li>
<li>""은 출력하지 않는다. ( ${ empty s2 } )</li>
<li>list size가 0인 경우. ( ${ empty list } )</li>
</ul>
<%-- ${ i << 2 } 위에 사용한 연산자이외의 연산자는 사용할 수 없다. --%>
</div>
</body>
</html>