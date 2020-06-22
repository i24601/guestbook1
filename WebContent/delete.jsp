<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao"%>
<%@ page import="com.javaex.vo.GuestBookVo"%>
<%
request.setCharacterEncoding("UTF-8");

int no = Integer.parseInt(request.getParameter("no"));
String password = request.getParameter("password");

GuestBookDao gDao = new GuestBookDao();
if(password.equals(gDao.getPassword(no)))
{
gDao.guestDelete(no);
}
response.sendRedirect("addList.jsp");
%>