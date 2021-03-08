<%@page import="kr.co.koo.onceADay.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
	String userId = request.getParameter("user_id");
	MemberDAO dao = MemberDAO.getInstance();
	
	boolean flag = dao.confirmId(userId);
	String str = "";
	
	if(flag) { 
		str = "NO";
		out.print(str);
		//System.out.println("There is an existing ID.");
	} else {
		str = "YES";
		out.print(str);
		//System.out.println("You can use the ID.");
	}
%>
	







