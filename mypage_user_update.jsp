
<%@page import="en.co.koo.onceADay.member.model.MemberVO"%>
<%@page import="en.co.koo.onceADay.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String userName = (String)session.getAttribute("user_name");
	if(userName == null) response.sendRedirect("/onceADay");	

	String id = (String)session.getAttribute("user_id");

	MemberDAO dao = MemberDAO.getInstance();
	MemberVO member = dao.getMemberInfo(id);	
%>

<%@ include file="../include/header.jspf"%>
<style>
header.masthead {
	display: none;
}
</style>

<br />
<br />
<div class="row">
	<div class="col-md-3"></div>

	<div class="col-md-6">

		<ul class="nav nav-tabs nav-justified">
			<li class="nav-item"><a class="nav-link"
				href="/onceADay/users/mypage_change_pw.jsp" style="font-size: 20px;"><strong>Change Password</strong></a></li>
			<li class="nav-item"><a class="nav-link active"
				href="/onceADay/users/mypage_user_update.jsp" style="font-size: 20px;"><strong>Edit Account Information</strong></a></li>
			<li class="nav-item"><a class="nav-link"
				href="/onceADay/users/mypage_delete_check.jsp" style="font-size: 20px;"><strong>Deactivate Account</strong></a></li>

		</ul>
		<br />
		<br />

		<h4 style="color: #ff52a0;">Edit Account Information</h4>
		<hr />
		<br />
		<form action="/onceADay/users/user_update_ok.jsp" name="signup" id="signUpForm"
			method="post" style="margin-bottom: 0;">

	<table style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
		<tr>
			<td style="padding-top: 10px; text-align: center">
				<p>
					<strong><%= userName %>(<%= id %>) information has changed.</strong>
				</p>
			</td>
		</tr>


		<tr>
			<td style="text-align: left">
				<p>
					<strong>Please type in a new name.</strong>&nbsp;&nbsp;&nbsp;<span id="nameChk"></span>
				</p>
			</td>
		</tr>
		<tr>
			<td><input type="text" name="userName" id="user_name"
				class="form-control tooltipstered" maxlength="6" required="required"
				aria-required="true" value="<%= member.getUserName() %>"
				style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
				placeholder="Maximum 6 characters"></td>
		</tr>

		<tr>
			<td style="text-align: left">
				<p>
					<strong>Please type in a new email address.</strong>&nbsp;&nbsp;&nbsp;<span id="emailChk"></span>
				</p>
			</td>
		</tr>
		<tr>
			<td><input type="email" name="userEmail" id="user_email"
				class="form-control tooltipstered" required="required"
				aria-required="true" value="<%= member.getUserEmail() %>"
				style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
				placeholder="ex) onceADay@produce.com"></td>
		</tr>


		<tr>
			<td style="width: 100%; text-align: center; colspan: 2;"><input
				type="submit" value="Edit Account" class="btn form-control tooltipstered"
				id="update-btn"
				style="background-color: #ff52a0; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">
			</td>
		</tr>

	</table>
</form>
		

	</div>
	<div class="col-md-3"></div>
</div>

<br />
<br />




<%@ include file="../include/footer.jspf"%>
