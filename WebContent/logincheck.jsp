
<%@page import="database.*,java.sql.*,java.util.*"%>
<%!int count=0;%>
<% 
String username,email=null;
String eemail=request.getParameter("email");
String pwd=request.getParameter("password");
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();Statement st2=con.createStatement();
ResultSet r=st.executeQuery("select * from register where email='"+eemail+"' and password='"+pwd+"'  ");
if(r.next())
	{
		 System.out.println("if");
Statement st3=con.createStatement();
 ResultSet r3=st3.executeQuery("select * from register where email='"+eemail+"' and password='"+pwd+"' ");
if(r3.next()){
	username=r3.getString("name");
	email=r3.getString("email");
	session.setAttribute("uname",username);
	session.setAttribute("email",email);
	response.sendRedirect("jhome.jsp");
	
 }
   else{
	  response.sendRedirect("login.jsp?atrbt=fail");
	  }
   }
 else{
	 System.out.println("else");
 response.sendRedirect("login.jsp?msg1=fail");

   }
 
}catch(Exception e){e.printStackTrace();}

%>