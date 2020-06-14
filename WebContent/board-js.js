function doMove(action) {
	//게시글 작성
	if(action == "form") {
		document.location.href = "board_form.jsp";
	}
	
	//게시글 목록
	if(action == "list") {
		document.location.href = "board_list.jsp";
	}

	//게시글 수정
	if(action == "update") {
		document.location.href = "board_update.jsp";
	}
	
	//회원가입 페이지 이동
	if(action == "join") {
		document.location.href = "member_join.jsp";
	}
	
	//로그인 페이지 이동
	if(action == "login") {
		document.location.href = "login.jsp";
	}
	
	
}