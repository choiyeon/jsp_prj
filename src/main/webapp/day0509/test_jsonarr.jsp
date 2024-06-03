<%@page import="java.sql.SQLException"%>
<%@page import="kr.co.sist.user.board.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.sist.user.board.BoardDAO"%>
<%@page import="kr.co.sist.user.board.SearchVO"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="JSONArray"%>
<%
//1. JSONArray 생성 - java.util.List 기반
JSONArray jsonArr = new JSONArray();

// //2. JSONObject 생성
// JSONObject jsonObj = new JSONObject();
// jsonObj.put("name", "이명화");
// jsonObj.put("age", "25");
// JSONObject jsonObj2 = new JSONObject();
// jsonObj2.put("name", "박시현");
// jsonObj2.put("age", "23");
// JSONObject jsonObj3 = new JSONObject();
// jsonObj3.put("name", "홍성강");
// jsonObj3.put("age", "35");

// //3. JSONArray추가
// jsonArr.add(jsonObj);
// jsonArr.add(jsonObj2);
// jsonArr.add(jsonObj3);

SearchVO sVO = new SearchVO();
sVO.setStartNum(11);
sVO.setEndNum(20);
sVO.setField("0");
sVO.setKeyword("오늘");
BoardDAO bDAO = BoardDAO.getInstance();
try{
	List<BoardVO> list = bDAO.selectBoard(sVO);
	JSONObject jsonTemp = null;
	for(BoardVO bVO : list){
// 		1. JSONObject 생성
		jsonTemp = new JSONObject();
// 		2. JSONObject 값 할당
		jsonTemp.put("num",bVO.getNum());
		jsonTemp.put("title",bVO.getTitle());
		jsonTemp.put("id",bVO.getId());
		jsonTemp.put("cnt",bVO.getCnt());
// 		3. JSONObject을 JSONArray 추가
		jsonArr.add(jsonTemp);
	}//end for
}catch(SQLException e){
	e.printStackTrace();
}//end catch

//4. 문자열로 받기
String jsonStr = jsonArr.toJSONString();
%>
<%= jsonStr %>