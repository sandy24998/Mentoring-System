
<%@page import="database.*,java.sql.*,java.util.*"%>

<%
		String username=request.getParameter("username");
		String password=request.getParameter("password");
if((username.equals("mentoring"))&& (password.equals("12345")))
	 {
response.sendRedirect("adminhome.jsp");
}

else{
response.sendRedirect("Admin.jsp?al=fail");
}
%>

