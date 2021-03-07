<%@page import="kr.co.koo.onceADay.member.model.MemberVO"%>
<%@page import="kr.co.koo.onceADay.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("user_id");
	String pw = request.getParameter("user_pw");
	
	
	MemberDAO dao = MemberDAO.getInstance();
	int rn = dao.userCheck(id, pw);
	String str = "";


	if(rn == MemberDAO.LOGIN_SUCCESS) {
		MemberVO user = dao.getMemberInfo(id);
		session.setAttribute("user_id", id);		
		session.setAttribute("user_name", user.getUserName());
		//response.sendRedirect("/onceADay");
		str = "LOGIN_OK";
	} else if(rn == MemberDAO.LOGIN_FAIL_PW) {
		str = "NOT_PW";
	} else {
		str = "NOT_ID";
	}
	out.print(str);
%>




