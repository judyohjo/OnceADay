<%@page import="kr.co.koo.onceADay.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String id = (String)session.getAttribute("user_id");

	MemberDAO dao = MemberDAO.getInstance();
	boolean check = dao.deleteMember(id);
	
	if(check) {		
		session.invalidate();
%>
		<script>
			alert("Your account has been deactivated.");
			location.href='/onceADay';
		</script>
<%
	}else {
%>
		<script>
			alert("Your account failed to deactivate.");
			location.href='/onceADay/users/mypage_delete_check.jsp';
		</script>
<%
	}
%>
