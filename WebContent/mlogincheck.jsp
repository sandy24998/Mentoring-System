
<%@page import="database.*,java.sql.*,java.util.*"%>
<%!int count=0;%>
<% 
String username,email=null;
String eemail=request.getParameter("email");
String pwd=request.getParameter("password");
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();Statement st2=con.createStatement();
ResultSet r=st.executeQuery("select * from mregister where email='"+eemail+"' and pass='"+pwd+"'  ");
if(r.next())
	{

Statement st3=con.createStatement();
ResultSet r3=st3.executeQuery("select * from mregister where email='"+eemail+"' and pass='"+pwd+"' ");
if(r3.next()){
	username=r3.getString("uname");
	email=r3.getString("email");
	session.setAttribute("uname",username);
	session.setAttribute("email",email);
	response.sendRedirect("mhome.jsp");
	
 }
   else{
	  response.sendRedirect("mlogin.jsp?atrbt=fail");
	  }
   }
 else{
	 System.out.println("else");
 response.sendRedirect("mlogin.jsp?msg1=fail");

   }
 
}catch(Exception e){e.printStackTrace();}

%>