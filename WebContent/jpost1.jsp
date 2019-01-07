<%@ include file="jheader.jsp"%>
<%@page import="database.*,java.sql.*"%>


 <%

String dbt=request.getParameter("dbt");
String uname=(String)session.getAttribute("uname");
String email=(String)session.getAttribute("email");
int id=0;


try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(dbid) from doubt");
if (rs.next())
	{
id=rs.getInt(1);
++id;

}

Statement st3=con.createStatement();
int i =st3.executeUpdate("insert into doubt values('"+id+"','"+uname+"','"+email+"','"+dbt+"')");
if(i>0){

	response.sendRedirect("jpostdoubt.jsp?post=success");
	
 }
   else{
	  response.sendRedirect("jpostdoubt.jsp?failed=fail");
	  }
}
catch(Exception e){e.printStackTrace();}

%>
<br><br>
	<%@ include file="footer.jsp"%>