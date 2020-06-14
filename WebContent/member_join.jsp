<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="css/board.css" type="text/css" media="screen"/>
</head>
<body>
	<div align="center">
		<h2>회원가입</h2>
		<hr>
		<p><a href=login.jsp>로그인 </a></p>
		<form name="form1" method="post" action="board_control.jsp">
		<input type="hidden" name="action" value="join">
			<table border="1">
			<tr>
			<th>아이디</th>
			<td><input type="text" name="m_id" maxlength="15" required></td>
			</tr>
			<tr>
			<th>이름</th>
			<td><input type="text" name="m_name" maxlength="15" required></td>
			</tr>
			<tr>
			<th>비밀번호</th>
				<td>
					<input type="password" name="m_pw" maxlength="15" required>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="저장">
					<input type="reset" value="취소">
				</td>
			</tr>
			</table>
		</form>
	</div>
</body>
</html>