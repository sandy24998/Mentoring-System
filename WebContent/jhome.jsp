<%@ include file="jheader.jsp"%>
<%@page import ="database.*,java.sql.*" %>

<br><br>
<%
String email=(String)session.getAttribute("email");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from register where email='"+email+"' ");
if(rs.next())
{
	
	%>
<div align="center">
<h3> Welcome <%=rs.getString(4)%></h3>
<table>
<tr><td></td></tr>
</div>
<br><br><br>
<%}%>
	<%@ include file="footer.jsp"%>