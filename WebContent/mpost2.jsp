<%@ include file="mheader.jsp"%>
<%@page import="database.*,java.sql.*"%>


 <%

String clgname=request.getParameter("clgname");
String clgcode=request.getParameter("clgcode");
String clguni=request.getParameter("clguni");
String clglocation=request.getParameter("clglocation");
String clgbranch=request.getParameter("clgbranch");
String clg=request.getParameter("clg");
String uname=(String)session.getAttribute("uname");
String email=(String)session.getAttribute("email");
int id=0;
String dbid=null;

try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(cid) from college");
if (rs.next())
	{
id=rs.getInt(1);
++id;

}

Statement st3=con.createStatement();
int i =st3.executeUpdate("insert into college values('"+id+"','"+clgname+"','"+clgcode+"','"+clguni+"','"+clglocation+"','"+clgbranch+"','"+clg+"','"+uname+"','"+email+"')");
if(i>0){

	response.sendRedirect("mpostcglist.jsp?post=success");
	
 }
   else{
	  response.sendRedirect("mpostcglist.jsp?failed=fail");
	  }
}
catch(Exception e){e.printStackTrace();}

%>
<br><br>
	<%@ include file="footer.jsp"%>