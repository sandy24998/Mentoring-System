<%@ include file="jheader.jsp"%>
<br><br>
<%
String post=request.getParameter("post");
if(post!=null){
out.println("<script>alert('Doubt post Succesfully')</script>");
}

String post1=request.getParameter("failed");
if(post1!=null){
out.println("<script>alert('Failed.............')</script>");
}

%>


<section id="contact-page" class="container">
        <div class="row">
            <div class="col-sm-8">
                <h4></h4>
                
                <form  method="post" action="jpost1.jsp">
                    <div class="row">
                       <div class="col-sm-5">


<img src="images//blog-icon.png" Style="width:250;height:250">
</div>

                         <!--    <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="First Name">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Last Name">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Email address">
                            </div>
							 </div>-->
                       <div align="center">     
                        <div class="col-sm-7">
                            <textarea name="dbt" id="message" required="required" class="form-control" rows="8" placeholder="Doubt"></textarea>
                        <br><br>
                                <button type="submit" class="btn btn-primary btn-lg">Post Doubt</button>
                           
                        </div>
                    </div>
                </form>
            </div>
 </div> </div>
 </section>








<br><br>
	<%@ include file="footer.jsp"%>