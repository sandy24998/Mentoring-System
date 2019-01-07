<%@ include file="mheader.jsp"%>
<br><br>
<%
String post=request.getParameter("post");
if(post!=null){
out.println("<script>alert('College Details post Succesfully')</script>");
}

String post1=request.getParameter("failed");
if(post1!=null){
out.println("<script>alert('Failed...........to Post..')</script>");
}

%>


<section id="contact-page" class="container">
        <div class="row">
            <div class="col-sm-8">
                <font style="color:blue"><h2>Post Best International Colleges </h2>
             <br><br>
                <form  method="post" action="mpost2.jsp">
                    <div class="row">
                       <div class="col-sm-5">





                             <div class="form-group">
                                <input type="text" class="form-control" name="clgname" required="required" placeholder="College Name">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control"  name="clgcode" required="required" placeholder="College Code">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="clguni" required="required" placeholder="University Name">
                            </div>
							  <div class="form-group">
                                <input type="text" class="form-control" name="clglocation" required="required" placeholder="State,Country">
                            </div>
							  <div class="form-group">
                                <input type="text" class="form-control" name="clgbranch" required="required" placeholder="Branches">
                            </div>
							 </div>
                       
                        <div class="col-sm-7">
                            <textarea name="clg" id="message" required="required" class="form-control" rows="8" placeholder="College Description"></textarea>
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