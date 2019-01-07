<%@page import="database.*,java.sql.*,java.util.*"%>


<%
int uid=0;
String name = request.getParameter("name");
String email = request.getParameter("email");
String pass = request.getParameter("password");
String contact = request.getParameter("contact");

Connection con=databasecon.getconnection();
Statement st=null;
Statement stm;
Statement stmt=null;
ResultSet rs=null;
stm=con.createStatement();
ResultSet rsm=stm.executeQuery("select email from mregister where email='"+email+"' ");
if(rsm.next()){
	response.sendRedirect("mregistration.jsp?email=already");


}

else{
st=con.createStatement();
rs=st.executeQuery("select max(id) from mregister");
if(rs.next())
{
	uid=rs.getInt(1);
	++uid;

}
stmt=con.createStatement();
int i = stmt.executeUpdate("insert into mregister (id,uname,email,pass,phno)values('"+uid+"','"+name+"','"+email+"','"+pass+"','"+contact+"')");

if(i>0){
response.sendRedirect("mregistration.jsp?msg1=succ");
}else{
response.sendRedirect("mregistration.jsp?msg=unsucc");
}
}
%>