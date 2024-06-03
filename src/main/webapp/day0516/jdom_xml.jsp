<%@page import="java.io.FileOutputStream"%>
<%@page import="org.jdom2.output.Format"%>
<%@page import="org.jdom2.output.XMLOutputter"%>
<%@page import="org.jdom2.Document"%>
<%@page import="org.jdom2.Element"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%
//1. XML문서 객체 생성
Document doc = new Document();
//2. 최상위 부모노드 생성
Element rootNode = new Element("msgs");
//3. 자식 노드 생성
Element subNode = new Element("msg");
Element subNode2 = new Element("msg");
//자식노드가 문자열을 가져야한다면 설정
subNode.setText("안녕 : JDOM2 Parser를 사용한 XML생성");
subNode2.setText("오늘 목요일 내이 ㄹ금요일");

//4. 자식 노드를 부모노드에 배치
rootNode.addContent(subNode);
rootNode.addContent(subNode2);

//5. 부모노드를 XML문서에 배치
// System.out.println(subNode);
doc.addContent(rootNode);

//6. XML 문서 객체를 출력
XMLOutputter xOut = new XMLOutputter();
xOut.setFormat(Format.getPrettyFormat());
xOut.output(doc, System.out);

FileOutputStream fos = new FileOutputStream("C:/dev/workspace/jsp_prj/src/main/webapp/day0516/hello.xml");
xOut.output(doc, fos);//생성된 XML을 File로 출력
xOut.output(doc, out);//생성된 XML을 File로 출력

%>