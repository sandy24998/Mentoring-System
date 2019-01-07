<%@ include file="mheader.jsp"%>
<%@page import="database.*,java.sql.*"%>


 <%

String jid=request.getParameter("jid");
String jemail=request.getParameter("jemail");
String jdoubt=request.getParameter("jdoubt");
String reply=request.getParameter("reply");

String uname=(String)session.getAttribute("uname");
String email=(String)session.getAttribute("email");
int id=0;
String dbid=null;

try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(rid) from reply");
if (rs.next())
	{
id=rs.getInt(1);
++id;

}

Statement st3=con.createStatement();
int i =st3.executeUpdate("insert into reply values('"+id+"','"+jid+"','"+jemail+"','"+jdoubt+"','"+reply+"','"+uname+"','"+email+"')");
if(i>0){

	response.sendRedirect("mviewdoubt.jsp?post=success");
	
 }
   else{
	  response.sendRedirect("mviewdoubt.jsp?failed=fail");
	  }
}
catch(Exception e){e.printStackTrace();}

%>
<br><br>
	<%@ include file="footer.jsp"%>