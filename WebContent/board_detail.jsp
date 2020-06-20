<%@page import="board.board.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="board" scope="request" class="board.board.Board"/>
<% Board boardData = (Board)board;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board_detail</title>
</head>
<body>
<div align="center">
	<h2>게시판 : 상세 화면 </h2>
	<hr>
	<form>
	
		<table style="width: 80%; max-width: 600px;">
			<tr>
				<th style="width: 15%;">제목</th>
				<td style="width: 35%;"><%=board.getBoard_title() %></td>
				<th style="width: 15%;">번호</th>
				<td style="width: 35%;"><%=board.getBoard_num() %></td>
			</tr>

			<tr>
			 <th>작성자</th>
			 <td colspan="3"><%=board.getBoard_name() %></td>
			</tr>
			
			<tr>
			 <th>작성일</th>
			 <td colspan="3"><%=board.getBoard_date() %></td>
			</tr>

			<tr>
			 <th>내용</th>
			 <td colspan="3"><%=board.getBoard_content() %></td>
			</tr>
			
		</table>
		<div style="width: 80%; max-width:600px; margin-top: 20px; display: flex; justify-content: flex-end;">
			<button style="margin: 5px; border: 0px;" type="button" onclick="return doUpdate('<%=board.getBoard_id()%>');">수정</button>
			<button style="margin: 5px; border: 0px;" type="button" onclick="return doRemove('<%=board.getBoard_id()%>');">삭제 </button>
			<button style="margin: 5px; border: 0px;" type="button" onclick="location.href='board_control.jsp?action=list'">목록</button>
		</div>
	
	</form>
</div>
<script type="text/javascript">
	var s_id = "<%=session.getAttribute("s_id")%>";
	var s_pw = "<%=session.getAttribute("s_pw")%>";

	function doRemove(board_id) {
		var checkPassword = prompt("비밀번호를 입력하세요");
		
		if(board_id == s_id && checkPassword == s_pw){
			var result = confirm("정말로 삭제하시겠습니까?");
			if(result){
				document.location.href="board_control.jsp?action=delete&board_num=<%=board.getBoard_num()%>";	
			} else {
				return false;
			}
			
		} else {
			if(board_id != s_id){
				alert("작성자가 아닙니다.");
			}else {
				alert("비밀번호가 틀렸습니다.");
			}
			return false;
		}
		
	}
	
	function doUpdate(board_id) {
		var checkPassword = prompt("비밀번호를 입력하세요");
		
		if(board_id == s_id && checkPassword == s_pw){
			document.location.href="board_control.jsp?action=update&board_num=<%=board.getBoard_num()%>";
		} else {
			if(board_id != s_id){
				alert("작성자가 아닙니다.");
			}else {
				alert("비밀번호가 틀렸습니다.");
			}
			return false;
		}

	}
	
	
</script>
</body>
</html>