<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao"%>
<%@ page import="com.javaex.vo.GuestBookVo"%>
<%
request.setCharacterEncoding("UTF-8");

int no = Integer.parseInt(request.getParameter("no"));
String password = request.getParameter("password");

GuestBookDao gDao = new GuestBookDao();

gDao.guestDelete(no, password);

/* guestdelete에 인자 2개 넘겨서 no, password 둘다 만족 */
response.sendRedirect("addList.jsp");
%>