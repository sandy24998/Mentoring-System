<%@include file="header.jsp"%>
<br><br>
<%
if(request.getParameter("reg")!=null){
	  out.println("<script>alert('Registered Successfully')</script>");
}

 if(request.getParameter("atrbt")!=null){
	  out.println("<script>alert('Search Results Cannot Find')</script>");
}
%>


<form method="post" action="search1.jsp">
 <%
String msg1 =request.getParameter("msg1");
if(msg1!=null){
out.println("<script>alert('Incorrect user name and password')</script>");
}
%>
<div align="center">
<div id="main">


<h3 style="color: green;" align="center"><B>Search Colleges</B></h3>	


 <table>
<div class="form-group">
					<tr><td><br></td></tr>
					
					<tr><td>Search:</td><td><input type="text" class="form-control" name="search"  placeholder="College Name" required></td></tr>	
							<tr><td><br></td></tr>
					<tr><td>      </td><td>&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-primary btn-lg">Search</td></tr>
				
					
				



</div></div>
  </table>
</form>
<br><br><br><br><br><br><br><br><br><br><br>




</div>
<br><br>
<%@include file="footer.jsp"%>

             