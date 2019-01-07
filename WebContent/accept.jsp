<%@page import ="database.*,java.sql.*" %>
<%
String email=request.getParameter("email");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
int i=st.executeUpdate("select * from register where email='"+email+"' ");
if(i>0)
{
response.sendRedirect("adminaccept.jsp?update=success");
}
else
{
response.sendRedirect("adminaccept.jsp?upd=fail");
}%>
