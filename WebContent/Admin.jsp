<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>

<%
	if (request.getParameter("al") != null) {
		out.println("<script>alert('Invalid Data !!')</script>");
	}
%>




<div id="main">


	<h3 style="color: green;" align="center">
		<B>Login as Admin</B>
	</h3>
	<div align="center">
		<div id="box">
			<div class="form-group">
				<form method="post" action="admincheck.jsp">

					<table>

						<tr>
							<td></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>User Name:</td>
							<td><input type="text" class="form-control" name="username" /></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><input type="password" class="form-control"
								name="password" /></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td><button type="submit" class="btn btn-primary btn-lg">Login</button></td>
						</tr>
					</table>
				</form>
			</div>
			<br>
			<br>
			<br>

		</div>

	</div>
</div>
</body>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<%@ include file="footer.jsp"%>



</html>