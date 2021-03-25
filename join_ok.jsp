<%@page import=".en.koo.onceADay.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
		
%>
<jsp:useBean id="members" class="en.co.koo.onceADay.member.model.MemberVO" />
<jsp:setProperty name="members" property="*" />

<%
	
    if(flag) {
%>
<script>
	alert('Thank you for signing up.');
	location.href='/onceADay';
</script>
<%
	} else {
%>
<script>
	alert('Please try again.');
	location.href='/onceADay';
</script>
<% } %>	






