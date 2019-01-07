<%@page import="database.*,java.sql.*,java.util.*"%>


<%
int uid=0;
String rno =request.getParameter("rno");
String password = request.getParameter("password");
String name = request.getParameter("name");
String father_name=request.getParameter("father_name");
String mother_name=request.getParameter("mother_name");
String email = request.getParameter("email");
String contact = request.getParameter("contact");
String course=request.getParameter("course");
String branch=request.getParameter("branch");
try{
Connection con=databasecon.getconnection();
Statement st=null;
Statement stm;
Statement stmt=null;
ResultSet rs=null;
stm=con.createStatement();
ResultSet rsm=stm.executeQuery("select email from register where email='"+email+"' ");
if(rsm.next()){
	response.sendRedirect("registration.jsp?email=already");

}

else{
st=con.createStatement();
rs=st.executeQuery("select max(id) from register");
if(rs.next())
{
	uid=rs.getInt(1);
	++uid;

}
PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?,?,?,?,?,?,?)");
ps.setInt(1, uid);
ps.setString(2, rno);
ps.setString(3, password);
ps.setString(4, name);
ps.setString(5, father_name);
ps.setString(6, mother_name);
ps.setString(7, email);
ps.setString(8, contact);
ps.setString(9, course);
ps.setString(10, branch);
int i=ps.executeUpdate();
if(i>0){
response.sendRedirect("registration.jsp?msg1=succ");
}else{
response.sendRedirect("registration.jsp?msg=unsucc");
}
}
}
catch(Exception e)
{
	e.printStackTrace();
}

%>