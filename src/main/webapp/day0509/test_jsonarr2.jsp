<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="kr.co.sist.user.board.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.sist.user.board.BoardDAO"%>
<%@page import="kr.co.sist.user.board.SearchVO"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="복합 형태 JSONObject"%>
<%
// 데이터와 부가적인 정보를 저장할 jsonObject 생성
JSONObject jsonObj = new JSONObject();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
jsonObj.put("pubDate", sdf.format(new Date()));
jsonObj.put("producer","박시현");

JSONArray jsonArr = new JSONArray();

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
	
	//부가적인 정보
	jsonObj.put("result", "SUCCESS");
	jsonObj.put("dataSize", list.size());
	jsonObj.put("data", jsonArr);
}catch(SQLException e){
	jsonObj.put("result", "FAIL");
	e.printStackTrace();
}//end catch

//4. 문자열로 받기
String jsonStr = jsonObj.toJSONString();
%>
<%= jsonStr %>