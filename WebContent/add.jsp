<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao"%>
<%@ page import="com.javaex.vo.GuestBookVo"%>

<%
	request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String password = request.getParameter("password");
String content = request.getParameter("content");
GuestBookDao pDao = new GuestBookDao();

pDao.GuestBookInsert(new GuestBookVo(name,password,content));
response.sendRedirect("addList.jsp");
%>