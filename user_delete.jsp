
<%@page import="kr.co.koo.onceADay.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
	String pw = request.getParameter("chkPw");
	
	MemberDAO dao = MemberDAO.getInstance();
	int check = dao.userCheck(id, pw);		
%>
<%@ include file="../include/header.jspf" %>
<style>
header.masthead {
	
	display: none;
}	
</style>

<br/><br/>
<div class="row">
<div class="col-md-3"></div>

<div class="col-md-6">

<ul class="nav nav-tabs nav-justified">
   <li class="nav-item" ><a class="nav-link" href="/onceADay/users/mypage_change_pw.jsp" style="font-size: 20px;"><strong>Change Password</strong></a></li>
   <li class="nav-item"><a class="nav-link" href="/onceADay/users/mypage_user_update.jsp" style="font-size: 20px;"><strong>Edit Account Information</strong></a></li>
   <li class="nav-item"><a class="nav-link active" href="/onceADay/users/mypage_delete_check.jsp" style="font-size: 20px;"><strong>Deactivate Account</strong></a></li>
   
</ul>
<br/><br/>

<h4 style="color: #ff52a0;">Deactivate Account Page</h4><hr/><br/>

<div align="center">

	
	<% if(check == MemberDAO.LOGIN_SUCCESS) { %>
		<h4><%= name %>(<%= id %>)! Do you wish to delete your account?</h4>
		
		<a class="btn" href="/onceADay/users/user_delete_ok.jsp"
		style="background-color: #ff52a0; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">Yes</a>&nbsp;&nbsp;
		<a class="btn btn-danger" href="/onceADay/users/mypage_delete_check.jsp"
		style="margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">No</a>
	
	<% } else { %>
		<script>
			alert("Type your password again.")
			history.back()
		</script>
	<% } %>

</div>
</div>
<div class="col-md-3"></div>
</div>

<br/><br/>


<%@ include file="../include/footer.jspf" %>
