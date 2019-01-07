<%@ include file="jheader.jsp"%>
<%@page import ="database.*,java.sql.*" %>
<br><br>
<%
String post=request.getParameter("post");
if(post!=null){
out.println("<script>alert('Job Details post Succesfully')</script>");
}

String post1=request.getParameter("failed");
if(post1!=null){
out.println("<script>alert('Failed...........to Post..')</script>");
}

String cgid = request.getParameter("cgid");
String cgname = request.getParameter("cgname");
String cgcode = request.getParameter("cgcode");
String memail = request.getParameter("memail");

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from college where cid='"+cgid+"' and clgname='"+cgname+"' and clgcode='"+cgcode+"' and email='"+memail+"' ");
while(rs.next())
{
%>


<section id="contact-page" class="container">
        <div class="row">
            <div class="col-sm-8">
                <font style="color:blue"><h2>Company  Details</h2>
             <br><br>
                <form  method="post" action="#">
                    <div class="row">
                       <div class="col-sm-5">





                             <div class="form-group">
                                <input type="text" class="form-control" name="cmpname" readonly="readonly" required="required" value="<%=rs.getString(2)%>">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control"  name="cmpcategory" readonly="readonly" required="required" value="<%=rs.getString(3)%>">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="cmplocation" readonly="readonly" required="required" value="<%=rs.getString(4)%>">
                            </div>
							  <div class="form-group">
                                <input type="text" class="form-control" name="cmpreqired" readonly="readonly" required="required" value="<%=rs.getString(5)%>">
                            </div>
							  <div class="form-group">
                                <input type="text" class="form-control" name="cmpskills" readonly="readonly" required="required" value="<%=rs.getString(6)%>">
                            </div>
							 </div>
                       
                        <div class="col-sm-7">
                            <textarea name="job" id="message" readonly="readonly" required="required" class="form-control" rows="8" ><%=rs.getString(7)%></textarea>
                        <br><br>
                                <button type="submit" class="btn btn-primary btn-lg"><a href="jviewcollege.jsp">Back</button>
                           
                        </div>
                    </div>
                </form>
            </div>
 </div> </div>
 </section>



<%}%>




<br><br>
	<%@ include file="footer.jsp"%>