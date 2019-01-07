
<%@page import="database.*,java.sql.*,java.util.*"%>
<%!int count=0;%>
<%@include file="header.jsp"%>
<br><br>

<div align="center">
<div id="main">
<h1>Search Results</h1>
<br><br>
<table>
<div class="form-group">
<tr style="color:brown">
<th>College Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>CollegeCode&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>University&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>Branches&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
</tr>




<% 

String search=request.getParameter("search");

try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();Statement st2=con.createStatement();
ResultSet rs=st2.executeQuery("select * from college where clgname like'%"+search+"%' or clgbranch like '%"+search+"%' or clgcode like '%"+search+"%' ");
if(rs.next())
	{
ResultSet r=st.executeQuery("select * from college where clgname like '%"+search+"%' or clgbranch like '%"+search+"%' or clgcode like '%"+search+"%' ");


while(r.next())
	{%>
	
	<tr>
	<td><%=r.getString(2)%></td>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=r.getString(3)%></td>
	<td><%=r.getString(5)%></td>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=r.getString(4)%></td>
	<td><%=r.getString(6)%></td>
	</tr>






 <%}}
   else{
	  response.sendRedirect("search.jsp?atrbt=fail");
	  }
 
 
}catch(Exception e){e.printStackTrace();}

%>
</div>
</table>
</div></div>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp"%>