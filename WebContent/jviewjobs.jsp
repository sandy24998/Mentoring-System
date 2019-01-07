<%@ include file="jheader.jsp"%>
<%@page import ="database.*,java.sql.*" %>
<br><br>


<section id="contact-page" class="container">
        <div class="row">
            <div class="col-sm-8">
                <font style="color:blue"><h2>View Jobs</h2>
             <br><br>
                
                    
 <table>
 <th>Company Name &nbsp;&nbsp;</th>
 
 <th>&nbsp;&nbsp;&nbsp;Role&nbsp;&nbsp;&nbsp;</th>
<th>&nbsp;&nbsp;&nbsp;Required Skills</th>


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
ResultSet rs=st.executeQuery("select * from job");
while(rs.next())
{
	

%>






                           <!--  <div class="form-group">
                                <input type="text" class="form-control" name="clgname" required="required" placeholder="College Name">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control"  name="clgcode" required="required" placeholder="College Code">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="clguni" required="required" placeholder="University Name">
                            </div>
							  <div class="form-group">
                                <input type="text" class="form-control" name="clglocation" required="required" placeholder="Country,State">
                            </div>
							  <div class="form-group">
                                <input type="text" class="form-control" name="clgbranch" required="required" placeholder="Branches">
                            </div>-->
						
                     
                  
						
						 <tr><td><%=rs.getString(2)%>:&nbsp;&nbsp;&nbsp;</th>&nbsp;&nbsp;&nbsp;<td><font Style="color:blue">
                            <%=rs.getString(5)%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(6)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
							  <th><button type="submit" class="btn btn-primary btn-lg">&nbsp;&nbsp;<a href="jview1.jsp?jbid=<%=rs.getString(1)%>&&cname=<%=rs.getString(2)%>&&memail=<%=rs.getString(9)%>">View</button></th></tr>
			         <%}%>   				  
							  </table>
                        <br><br>
                    
                           
                  
                    </div>
                
            </div>
 </div> </div>
 </section>








<br><br>
	<%@ include file="footer.jsp"%>