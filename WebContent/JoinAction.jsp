<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="member.MemberDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="member" class="member.Member" scope ="page" />	
<jsp:setProperty name ="member" property = "id" />
<jsp:setProperty name ="member" property = "passwd" />
<jsp:setProperty name ="member" property = "name" />
<jsp:setProperty name ="member" property = "phoneNumber" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(member.getId() == null || member.getPasswd() == null || member.getName() == null || member.getPhoneNumber() ==null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('모든 항목을 입력해주세요.')");
			script.println("history.back()");	
			script.println("</script>");
		}else{
			MemberDAO memberDAO = new MemberDAO(); //memberDAO라는 객체만듬
			int result = memberDAO.join(member); //로그인폼에 넣은 아이디와 패스워드 값이 login함수의 매개변수로 들어가서 result로 들어감
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다.')");
				script.println("history.back()");	
				script.println("</script>");
			}else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'index.jsp'");
				script.println("</script>");
			}
			
		}
		
	%>

</body>
</html>