<%@ include file="jheader.jsp"%>
<%@page import ="database.*,java.sql.*" %>
<br><br>


<section id="contact-page" class="container">
        <div class="row">
            <div class="col-sm-8">
                <font style="color:blue"><h2>View Replies</h2>
             <br><br>
                
                    <div class="row">
                       <div class="col-sm-5">




<%
String post=request.getParameter("post");
if(post!=null){
out.println("<script>alert('Reply the Answer Succesfully')</script>");
}

String post1=request.getParameter("failed");
if(post1!=null){
out.println("<script>alert('Failed...........to Reply..')</script>");
}

String nomsg=request.getParameter("nomsg");
if(nomsg!=null){
out.println("<script>alert('Wait..You Have No Replies')</script>");
}




String email=(String)session.getAttribute("email");
String status=null;
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from doubt where email='"+email+"' ");
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
						
                     
                       
						 <table>
						 <tr><th><u><%=rs.getString(2)%>:<u>&nbsp;&nbsp;&nbsp;</th>&nbsp;&nbsp;&nbsp;<th>.</th></tr><tr><th><font Style="color:#ff3333">
                            <%=rs.getString(4)%> </th><th>&nbsp;&nbsp;</th>
							  <th><button type="submit" class="btn btn-primary btn-lg">&nbsp;&nbsp;<a href="jview3.jsp?did=<%=rs.getString(1)%>&&jemail=<%=rs.getString(3)%>">View Replies</a></button></th></tr></table>
                        <br><br>
                                
                 <%}%>         
                  
                    </div>
                
            </div>
 </div> </div>
 </section>








<br><br>
	<%@ include file="footer.jsp"%>