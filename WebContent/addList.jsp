<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.GuestBookDao"%>
<%@ page import="com.javaex.vo.GuestBookVo"%>

<%
GuestBookDao bDao = new GuestBookDao();
List<GuestBookVo> gList = bDao.getPersonList();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전화번호</title>
</head>
<body>

	<form action="./add.jsp" method="post">
	<fieldset style = "width:600px">
		이름 : <input type="text" name="name"> 
		비밀번호 : <input type="text" name="password"><br> 
		<input type="text" name="content"><br>
		<button type="submit">확인</button>
		</fieldset>
	</form>

	<%
		for (GuestBookVo vo : gList) {
	%>
	<table border='1'>
		<colgroup>
			<col style="width: 120px">
			<col style="width: 170px">
		</colgroup>
		<tbody>
			<tr>
				<td><%=vo.getNumber()%></td>
				<td><%=vo.getName()%></td>
				<td><%=vo.getReg_date()%></td>
				<td><a href = "./deleteForm.jsp?no=<%=vo.getNumber()%>">삭제</a>
			</td>

			<tr>
			<td colspan="4"><%=vo.getContent()%></td>
			</tr>
		</tbody>
	</table>
	<br>
	<%
		}
	%>

</body>
</html>