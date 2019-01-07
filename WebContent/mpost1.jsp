<%@ include file="mheader.jsp"%>

<%@page import="database.*,java.sql.*"%>


 <%

String cmpname=request.getParameter("cmpname");
String cmpcategory=request.getParameter("cmpcategory");
String cmplocation=request.getParameter("cmplocation");
String cmpreqired=request.getParameter("cmpreqired");
String cmpskills=request.getParameter("cmpskills");
String job=request.getParameter("job");
String uname=(String)session.getAttribute("uname");
String email=(String)session.getAttribute("email");
int id=0;
String dbid=null;

try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(jbid) from job");
if (rs.next())
	{
id=rs.getInt(1);
++id;

}

Statement st3=con.createStatement();
int i =st3.executeUpdate("insert into job values('"+id+"','"+cmpname+"','"+cmpcategory+"','"+cmplocation+"','"+cmpreqired+"','"+cmpskills+"','"+job+"','"+uname+"','"+email+"')");
if(i>0){

	response.sendRedirect("mpostjobs.jsp?post=success");
	
 }
   else{
	  response.sendRedirect("mpostjobs.jsp?failed=fail");
	  }
}
catch(Exception e){e.printStackTrace();}

%>
<br><br>
	<%@ include file="footer.jsp"%>