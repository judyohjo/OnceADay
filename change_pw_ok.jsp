<%@page import="en.co.koo.onceADay.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String oldPw = request.getParameter("oldPw");
	String newPw = request.getParameter("newPw");
	String id = (String)session.getAttribute("user_id");

	MemberDAO dao = MemberDAO.getInstance();
	if(dao.userCheck(id, oldPw) == MemberDAO.LOGIN_SUCCESS) {
		
		boolean flag = dao.changePassword(id, newPw);
		if(flag) {
%>
<script>
			alert("The password has been changed.");
			document.location.href="/onceADay";
		</script>
<%
		}else {
%>
		<script>
			alert("The password failed to change.");
			history.back();
		</script>
<%		
		}
	}else {
%>
	<script>
		alert("Insert your old password.");
		history.back();
	</script>
<%		
	}
%>





