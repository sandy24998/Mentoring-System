<%@ include file="aheader.jsp"%>
<%@page import ="database.*,java.sql.*" %>
<%

if(request.getParameter("update")!=null)
{
out.println("<script>alert('Request Accept To Login  As Mentor (Senior)')</script>");
}
if(request.getParameter("upd")!=null)
{
out.println("<script>alert('Failed to Accept Request')</script>");
}


if(request.getParameter("reject")!=null)
{
out.println("<script>alert('Reject To Login As Mentor (Senior)')</script>");
}
if(request.getParameter("rej")!=null)
{
out.println("<script>alert('Failed to Reject')</script>");
}


%>
<br><br>
<div align="center">
<h2><font color="green"><i>Mentor’s (Senior’s) Action Page</i></font></h2>
<br>
<table>
<tr style="color:orange"  >
<th>Name</th>
<th>&nbsp;&nbsp;&nbsp;&nbsp;Email</th>
<th></th>
<th>&nbsp;&nbsp;Action</th>
</tr>

<%
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from mregister");
while(rs.next())
{%>

<tr>
<td><%=rs.getString(2)%>&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;<%=rs.getString(3)%></td>
<td></td>
<td>&nbsp;&nbsp;<a href ="accept1.jsp?email=<%=rs.getString(3)%>"><font style= "color:blue">Accept  </font></a><b>/ </b>
<a href="reject1.jsp?email=<%=rs.getString(3)%>"><font style= "color:red">Reject</font></a></td>


<%}%>
</table>
</div>



<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>