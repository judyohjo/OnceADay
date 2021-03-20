<%@page import="en.co.koo.onceADay.member.model.MemberDAO"%>
<%@page import="en.co.koo.onceADay.member.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

	String id = (String)session.getAttribute("user_id");
	String name = request.getParameter("userName");
	String email = request.getParameter("userEmail");
	
	MemberVO member = new MemberVO();
	member.setUserId(id);
	member.setUserName(name);
	member.setUserEmail(email);
	
	MemberDAO dao = MemberDAO.getInstance();
	
	boolean check = dao.updateMember(member);
		
	if(check) {
		session.setAttribute("user_name", member.getUserName());
%>
		<script>
			alert("회원정보가 정상적으로 수정되었습니다.");
			location.href="/onceADay";
		</script>
<%
	}else {
%>
		<script>
			alert("회원정보 수정에 실패했습니다.");
			location.href="/onceADay";
		</script>
<%
	}
%>
