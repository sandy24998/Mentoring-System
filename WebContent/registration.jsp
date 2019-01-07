<%@include file="header.jsp"%>
<%
String email = request.getParameter("email");
if(email != null){
out.println("<script>alert('The Email is Already Existed')</script>");
}

String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('Registration Unsuccessfully..Please check once again..')</script>");
}

String msg1 = request.getParameter("msg1");
if(msg1 != null){
out.println("<script>alert('Registration successfully..Thank you for Register..')</script>");
}
%>
<div align="center">
<div id="content">
        <div class="content_item">
		<br><br>		<br>
<form action="reginsert.jsp" method="post">
<table align="center" cellpadding = "10">
<div class="form-group">


<tr><td colspan="3"><font size="6" color="orange"><b><u style="text-align: center";> Student Registration Form</u></b></font></td></tr>

<tr>
<td>ROLL NO.</td>
<td><input type="text" class="form-control" name="rno"   required/>
</td>
</tr>
<tr>
<td>PASSWORD</td>
<td><input type="password" class="form-control" name="password"  required/>
</td>
</tr>
<!----- First Name ---------------------------------------------------------->
<tr>
<td>NAME</td>
<td><input type="text" class="form-control" name="name" maxlength="30" required="required"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
<tr>
<td>FATHER NAME</td>
<td><input type="text" class="form-control" name="mother_name" maxlength="30" required="required"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
<tr>
<td>MOTHER NAME</td>
<td><input type="text" class="form-control" name="father_name" maxlength="30" required="required"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
 

<!----- Date Of Birth -------------------------------------------------------->
<tr>
<td>DATE OF BIRTH</td>
 
<td>
<select name="birthday_day" id="Birthday_Day" required="required">
<option value="-1">Day:</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
 
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
 
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
 
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
 
<option value="31">31</option>
</select>
 
<select id="Birthday_Month" name="birthday_month" required="required">
<option value="-1">Month:</option>
<option value="January">Jan</option>
<option value="February">Feb</option>
<option value="March">Mar</option>
<option value="April">Apr</option>
<option value="May">May</option>
<option value="June">Jun</option>
<option value="July">Jul</option>
<option value="August">Aug</option>
<option value="September">Sep</option>
<option value="October">Oct</option>
<option value="November">Nov</option>
<option value="December">Dec</option>
</select>
 
<select name="birthday_year" id="Birthday_Year" required="required">
 
<option value="-1">Year:</option>
<option value="2012">2012</option>
<option value="2011">2011</option>
<option value="2010">2010</option>
<option value="2009">2009</option>
<option value="2008">2008</option>
<option value="2007">2007</option>
<option value="2006">2006</option>
<option value="2005">2005</option>
<option value="2004">2004</option>
<option value="2003">2003</option>
<option value="2002">2002</option>
<option value="2001">2001</option>
<option value="2000">2000</option>
 
<option value="1999">1999</option>
<option value="1998">1998</option>
<option value="1997">1997</option>
<option value="1996">1996</option>
<option value="1995">1995</option>
<option value="1994">1994</option>
<option value="1993">1993</option>
<option value="1992">1992</option>
<option value="1991">1991</option>
<option value="1990">1990</option>
 
<option value="1989">1989</option>
<option value="1988">1988</option>
<option value="1987">1987</option>
<option value="1986">1986</option>
<option value="1985">1985</option>
<option value="1984">1984</option>
<option value="1983">1983</option>
<option value="1982">1982</option>
<option value="1981">1981</option>
<option value="1980">1980</option>
</select>
</td>
</tr>
 
<!----- Email Id ---------------------------------------------------------->
<tr>
<td>EMAIL ID</td>
<td><input type="email" class="form-control" name="email" maxlength="100" required="required"/></td>
</tr>
 
<!----- Mobile Number ---------------------------------------------------------->
<tr>
<td>CONTACT</td>
<td>
<input type="text"  class="form-control"name="contact" maxlength="12" required="required" />
</td>
</tr>
<tr>
<td>COURSE<br />APPLIED FOR</td>
<td>
<select id="opt" class="form-control" name="course" required="required">
<option value="None">Course:</option>
<option value="BTECH">BTECH</option>
<option value="BCA">BCA</option>
<option value="BBA">BBA</option>
<option value="BCOM">BCOM</option>
<option value="MBA">MBA</option>
<option value="BSC">BSC</option>
<option value="BPT">BPT</option>
<option value="BDS">BDS</option>
<option value="MBBS">MBBS</option>
<option value="MTECH">MTECH</option>
<option value="BA">BA</option>
<option value="PHD">PHD</option>
</select>
</td>
</tr>
<tr>
<td>BRANCH</td>
<td><input type="text" required="required"  class="form-control" name="branch" maxlength="30" /></td>
</tr>
<tr>
<td colspan="2" align="center">
<button type="submit" class="btn btn-primary btn-lg">Register</button>&nbsp;&nbsp;
<button type="reset" class="btn btn-primary btn-lg">Reset</button>
</td>
</tr>
</div>
</table>
 
</form>
		</div><!--close content_text-->  		
	</div><!--close content-->	    
</div>
 <%@include file="footer.jsp"%>
