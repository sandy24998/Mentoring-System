<%@ include file="aheader.jsp"%>


<%@page import="database.*,java.sql.*,java.util.*"%>

<%
String nomsg=request.getParameter("nomsg");
if(nomsg!=null){
out.println("<script>alert('This Doubt Have No Replies')</script>");
}
%>
<br><br>

<div align="center">
<div id="main">
<div class="form-group">
<h1>View Comments</h1>
<br><br>
<table>

<tr style="color:brown">
<th>Junior Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Doubt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>NO.of Replies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
</tr>




<% 

String search=request.getParameter("search");

try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();Statement st2=con.createStatement();
ResultSet rs=st2.executeQuery("select * from reply group by jdoubt order by dbid");
while(rs.next())
	{
ResultSet r=st.executeQuery("select count(dbid) from reply where dbid='"+rs.getString("dbid")+"' ");


if(r.next())
	{	%>
	
	<tr>
	<td><%=rs.getString(3)%></td>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(4)%></td>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><%=r.getInt(1)%></b></td>
	<td><a href="aviewcomment.jsp?did=<%=rs.getString(2)%>&&jemail=<%=rs.getString(3)%>"><button type="submit" class="btn btn-primary btn-lg">&nbsp;&nbsp;View Replies</button></a></td>
	</tr>






 <%}
 else{
	  response.sendRedirect("adminviewcomment.jsp?resultt=fail");
	  }
	  }
   
 
 
}catch(Exception e){e.printStackTrace();}

%>

</table>
</div>
</div></div>
<br><br><br><br><br><br><br><br><br><br><br><br><br>



	<%@ include file="footer.jsp"%>