<%@include file="header.jsp"%>

<%
if(request.getParameter("reg")!=null){
	  out.println("<script>alert('Registered Successfully')</script>");
}

 if(request.getParameter("atrbt")!=null){
	  out.println("<script>alert('Admin Cannot Approve Your Permission To Login')</script>");
}
%>


<form method="post" action="mlogincheck.jsp">
 <%
String msg1 =request.getParameter("msg1");
if(msg1!=null){
out.println("<script>alert('Incorrect user name and password')</script>");
}
%>
<div align="center">
<div id="main">


<h3 style="color: green;" align="center"><B>Mentor’s (Senior’s) Login Form</B></h3>	


 <table>
<div class="form-group">
					<tr><td><br></td></tr>
					<tr><td>Email:</td><td><input type="email" class="form-control" name="email"placeholder="123@gmail.com" required></td></tr>
								<tr><td><br></td></tr>
					<tr><td>Password:</td><td><input type="password" class="form-control" name="password" placeholder="********" required></td></tr>	
							<tr><td><br></td></tr>
					<tr><td>      </td><td>&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-primary btn-lg">Login</td></tr>
					<tr><td></td><td>Yet Not Registered ?<a href="mregistration.jsp" ><img src="images//reg.png" style="width:85px;height:75px"></a></td>
					</tr>
					
				



</div></div>
  </table>
</form>





</div>
<br><br>
<%@include file="footer.jsp"%>

             