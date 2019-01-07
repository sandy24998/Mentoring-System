<%@ include file="jheader.jsp"%>
<%@page import ="database.*,java.sql.*" %>
<br><br>


<section id="contact-page" class="container">
        <div class="row">
            <div class="col-sm-8">
                <font style="color:blue"><h2>View College</h2>
             <br><br>
                
                    
 <table>
 <th>College Name &nbsp;&nbsp;</th>
 
 <th>&nbsp;&nbsp;&nbsp;College Code&nbsp;&nbsp;&nbsp;</th>
<th>&nbsp;&nbsp;&nbsp;Available Branches&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>&nbsp;&nbsp;&nbsp;Location</th>


<%
String post=request.getParameter("post");
if(post!=null){
out.println("<script>alert('Reply the Answer Succesfully')</script>");
}

String post1=request.getParameter("failed");
if(post1!=null){
out.println("<script>alert('Failed...........to Reply..')</script>");
}





String status=null;
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from college");
while(rs.next())
{
	

%>
	
						 <tr><td><%=rs.getString(2)%>:&nbsp;&nbsp;&nbsp;</th>&nbsp;&nbsp;&nbsp;<td><font Style="color:blue">
                            <%=rs.getString(3)%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(6)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;<%=rs.getString(5)%> </th>
							  <th><button type="submit" class="btn btn-primary btn-lg">&nbsp;&nbsp;<a href="jview2.jsp?cgid=<%=rs.getString(1)%>&&cgname=<%=rs.getString(2)%>&&cgcode=<%=rs.getString(3)%>&&memail=<%=rs.getString(9)%>">View</button></th></tr>
							  
							  
							                    <%}%>     </table>
                        <br><br>
                                
    
                  
                    </div>
                
            </div>
 </div> </div>
 </section>








<br><br>
	<%@ include file="footer.jsp"%>