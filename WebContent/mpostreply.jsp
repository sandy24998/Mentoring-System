<%@ include file="mheader.jsp"%>
<%@page import ="database.*,java.sql.*" %>

<section id="contact-page" class="container">
        <div class="row">
            <div class="col-sm-8">
                <font style="color:blue"><h2>Reply Student's Doubt</h2>
             <br>
                

<%


String jid = request.getParameter("jid");
String jemail = request.getParameter("jemail");
String uname=(String)session.getAttribute("uname");
String email=(String)session.getAttribute("email");
String status=null;
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from doubt  where dbid='"+jid+"' and email='"+jemail+"' ");
while(rs.next())
{




%>


<form  method="post" action="mpost3.jsp">
                    <table>


					<input type="hidden" name="jid" value="<%=rs.getString(1)%>">
					<input type="hidden" name="jemail" value="<%=rs.getString(3)%>">
					<input type="hidden" name="jdoubt" value="<%=rs.getString(4)%>">

						 <tr><th><u><%=rs.getString(2)%>:<u>&nbsp;&nbsp;&nbsp;</th>&nbsp;&nbsp;&nbsp;<th>.</th></tr><tr><th><font Style="color:#ff3333">
                            <%=rs.getString(4)%> </th><th>&nbsp;&nbsp;</th>
							  <th></th></tr></table>
							  <div class="col-sm-7">
                            <textarea name="reply" id="message" required="required" class="form-control" rows="8" placeholder="Reply For Doubt"></textarea>
                        <br>
                                <button type="submit" class="btn btn-primary btn-lg">Send</button>
                           
                        </div>
                </form>
            </div>
 </div> </div>
 </section>




<%}%>



<br><br>
	<%@ include file="footer.jsp"%>