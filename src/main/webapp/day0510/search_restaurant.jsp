<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="kr.co.sist.user.restaurant.RestaurantVO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.SQLException"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="kr.co.sist.user.restaurant.RestaurantDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="식당조회"%>
<%
	RestaurantDAO rDAO = RestaurantDAO.getInstance();
	JSONObject jsonObj = new JSONObject();
	try{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss EEEE");
		List<RestaurantVO> list = rDAO.selectAllRestaurant();
		jsonObj.put("resultFlag", true);
		jsonObj.put("dataSize", list.size());
		jsonObj.put("pubDate", sdf.format(new Date()));
		
		JSONArray jsonArr = new JSONArray();
		JSONObject jsonTemp = null;
		
		for(RestaurantVO rVO : list){
			//조회값이 존재하면 JSONObject 생성하여 값을 넣고
			jsonTemp = new JSONObject();
			jsonTemp.put("name", rVO.getName());//{name: xxx}
			jsonTemp.put("menu", rVO.getMenu());
			jsonTemp.put("lat", rVO.getLat());
			jsonTemp.put("lng", rVO.getLng());
			jsonTemp.put("date", rVO.getInput_date());
			
			//값을 가진 JSONObject을 JSONArray추가
			jsonArr.add(jsonTemp);
		}//end for
		
		//모든 값을 가진 jsonArr를 JSONObject 추가
		jsonObj.put("data", jsonArr);
		
	}catch(SQLException e){
		jsonObj.put("resultFlag",false);
		e.printStackTrace();
	}//end catch
%>
<%= jsonObj.toJSONString() %>