<%@page import="java.util.ArrayList"%>
<%@page import="board.board.Board"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="boards" scope="request" class="java.util.ArrayList" />
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/board.css" type="text/css" media="screen"/>
	<head>
		<meta charset="UTF-8">
		<title>게시판 목록</title>
	</head>
<body>
<div align="center">
	<h2>게시판 : 목록 화면 </h2>
	<hr>
	<div>
		<a onClick="location.href='board_control.jsp?action=logOut'">로그아웃</a>
	</div>
	<form>
		<table style="width: 80%;">
			<tr bgcolor="#FFF">
				<th style="width: 10%;">번호</th>
				<th style="width: 40%; min-width: 300px;">제목</th>
				<th style="width: 20%;">작성자</th>
				<th style="width: 30%;">작성일</th>
			</tr>
			<!-- 게시글 목록 출력 부분 -->
			<c:set var="boards" value="${boards}"/>
			<c:forEach items="${boards}" var="board">
				<tr>
					<td><a href="board_control.jsp?action=detail&board_num=${board.board_num}">${board.board_num}</a></td>
					<td><a href="board_control.jsp?action=detail&board_num=${board.board_num}">${board.board_title}</a></td>
					<td>${board.board_name}</td>
					<td>${board.board_date}</td>
				</tr>				
			</c:forEach>
			
			<%--
			<% for (Board board : (ArrayList<Board>) boards){ %>
			<tr>
				<td><a href="javascript:location.href='board_control.jsp?action=detail&board_num=<%=board.getBoard_num()%>'"><%=board.getBoard_num() %></a></td>
				<td><a href="javascript:location.href='board_control.jsp?action=detail&board_num=<%=board.getBoard_num()%>'"><%=board.getBoard_title() %></a></td>
				<td><%=board.getBoard_name() %></td>
				<td><%=board.getBoard_date() %></td>
			</tr>
			<% } %>
			--%>
		</table>
		<div style="width: 80%;">
			<div style="text-align: right; margin-top: 20px;">
				<form action="board_control.jsp" method="post">
					<input type="hidden" name="action" value="search">
					<input type="text" name="word">
					<input type="submit" value="검색">
				</form>
				<button style="border: 0px; background: #fff" type="button" onclick="location.href='board_control.jsp?action=list'">이전</button>
				<button style="border: 0px; background: #fff" type="button" onclick="location.href='board_form.jsp'">글쓰기</button>
			</div>
		</div>
	</form>
</div>
</body>
</html>