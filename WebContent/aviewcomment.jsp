<%@ include file="aheader.jsp"%>
<%@page import="database.*,java.sql.*"%>
<br>
<br>
<%


String did = request.getParameter("did");

String jemail = request.getParameter("jemail");%>

<section id="contact-page" class="container">
	<div class="row">
		<div class="col-sm-8">
		<h2><font>View Replies</font>
					</h2>	
			<br>
			<br>

			<div class="row">
				<div class="col-sm-5"></div>
				<%
	 Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs1=st.executeQuery("select * from doubt where dbid='"+did+"' and email='"+jemail+"' ");
if(rs1.next())
{
	 
	 
	 %>
				<table>
					<tr>
						<th><u><%=rs1.getString(2)%>:<u>&nbsp;&nbsp;&nbsp;</th>&nbsp;&nbsp;&nbsp;
						<th>.</th>
					</tr>
					<tr>
						<th><font Style="color: #ff3333"> <%=rs1.getString(4)%></th>
					</tr>
				</table>
				<br>
				<br>
				<br>
				<br>
				<table>



					<%
}
String post=request.getParameter("post");
if(post!=null){
out.println("<script>alert('Reply the Answer Succesfully')</script>");
}

String post1=request.getParameter("failed");
if(post1!=null){
out.println("<script>alert('Failed...........to Reply..')</script>");
}




String email=(String)session.getAttribute("email");
String status=null;

Statement st2=con.createStatement();Statement st3=con.createStatement();
ResultSet rs3=st3.executeQuery("select * from reply where dbid='"+did+"' and jemail='"+jemail+"' ");

if(rs3.next())
{
ResultSet rs=st2.executeQuery("select * from reply where dbid='"+did+"' and jemail='"+jemail+"' ");

while(rs.next())
{
	

%>

					<tr></tr>
					<tr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</tr>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<tr></tr>
					<tr>
						<th><font style="" size="4"><%=rs.getString(5)%></font></th>
						<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</th>
						<th><font style="" size="2"><i><%=rs.getString(7)%></font></i></th>
						<%}}
					
					else{
					response.sendRedirect("adminviewcomment.jsp?nomsg=no");
					}%>
						<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="submit" class="btn btn-primary btn-lg">
								&nbsp;&nbsp;<a href="adminviewcomment.jsp">Back
							</button>
						</th>
					</tr>
				</table>
				<br>
				<br>



			</div>

		</div>
	</div>
	</div>
</section>
<br>
<br>
<%@ include file="footer.jsp"%>