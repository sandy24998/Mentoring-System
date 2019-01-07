<%@ include file="mheader.jsp"%>
<br><br>
<%
String post=request.getParameter("post");
if(post!=null){
out.println("<script>alert('Job Details post Succesfully')</script>");
}

String post1=request.getParameter("failed");
if(post1!=null){
out.println("<script>alert('Failed...........to Post..')</script>");
}

%>


<section id="contact-page" class="container">
        <div class="row">
            <div class="col-sm-8">
                <font style="color:blue"><h2>Post Job Details</h2>
             <br><br>
                <form  method="post" action="mpost1.jsp">
                    <div class="row">
                       <div class="col-sm-5">





                             <div class="form-group">
                                <input type="text" class="form-control" name="cmpname" required="required" placeholder="Company Name">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control"  name="cmpcategory" required="required" placeholder="Public/Private Limited Company">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="cmplocation" required="required" placeholder="Country Name">
                            </div>
							  <div class="form-group">
                                <input type="text" class="form-control" name="cmpreqired" required="required" placeholder="Software/Hardware">
                            </div>
							  <div class="form-group">
                                <input type="text" class="form-control" name="cmpskills" required="required" placeholder="Skills like: Java,Embeded, cad">
                            </div>
							 </div>
                       
                        <div class="col-sm-7">
                            <textarea name="job" id="message" required="required" class="form-control" rows="8" placeholder="Job Description"></textarea>
                        <br><br>
                                <button type="submit" class="btn btn-primary btn-lg">Post</button>
                           
                        </div>
                    </div>
                </form>
            </div>
 </div> </div>
 </section>








<br><br>
	<%@ include file="footer.jsp"%>