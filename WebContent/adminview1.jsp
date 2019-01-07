<%@ include file="aheader.jsp"%>
<%@page import ="database.*,java.sql.*" %>

<br>
<div align="center">
<h2><font color="green"><b><i>Mentor’s (Senior’s)  Details</i></b></font></h2>
<br>
<table>
<tr style="color:orange"  >
<th>id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email</th>
<th></th>
<th>&nbsp;&nbsp;&nbsp;&nbsp;contact</th>
</tr>

<%
String contact=null;
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from mregister");
while(rs.next())
{
	contact=rs.getString(4);
	%>
<tr>
<td><%=rs.getString(1)%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><%=rs.getString(2)%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(3)%></td>
<td></td>
<%if(contact.equals("login")){%>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="color:green"><b><%=contact%></b></font></td><%}
else if(contact.equals("reject")){
%>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="color:red"><b><%=contact%></b></font></td><%}
else {%>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><%=contact%></b></td><%}%>
<%}%>
</table>
</div>


<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>