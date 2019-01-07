<%@include file="header.jsp"%>
<%
String email = request.getParameter("email");
if(email != null){
out.println("<script>alert('The Email is Already Existed')</script>");
}

String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('Registration Unsuccessfully..Please check once again..')</script>");
}

String msg1 = request.getParameter("msg1");
if(msg1 != null){
out.println("<script>alert('Registration successfully..Thank ypu for Register..')</script>");
}
%>
<div align="center">
<div id="content">
        <div class="content_item">
		<br><br>		<br>
<form action="mreginsert.jsp" method="post">
<table>
<div class="form-group">
<tr><td colspan="3"><font size="6" color="orange"><b><u>Registration Form</u></b></font></td></tr>
<tr><td><br><br></td></tr>
<tr><td><br><br></td></tr>

<tr>
<td><font size="5">Name</font></td>
<td><font size="5">:</font></td>
<td><input type="text" class="form-control" name="name"  required/></td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<td><font size="5">Email</font></td>
<td><font size="5">:</font></td>
<td><input type="email" class="form-control" name="email"  required/></td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<td><font size="5">Password</font></td>
<td><font size="5">:</font></td>
<td><input type="password" class="form-control" name="password"  required/></td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<td><font size="5">Contact</font></td>
<td><font size="5">:</font></td>
<td><input type="text" class="form-control" name="contact" maxlength="10" required/></td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
</tr>

<tr><td><td>
<td><button type="submit" class="btn btn-primary btn-lg">Register</td><td></td>

</tr>
</div>
</table>
</form>
		</div><!--close content_text-->  		
	</div><!--close content-->	    
</div>
 <%@include file="footer.jsp"%>
