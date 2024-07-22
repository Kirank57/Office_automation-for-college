<% 
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null)
{
%>
<jsp:include page="meta.jsp"></jsp:include> 

<jsp:include page="sidebar.jsp"></jsp:include>

<jsp:include page="header.jsp"></jsp:include>

		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="forms">
					<!--<h2 class="title1">Admin/Owner Details/</h2> -->
					<div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
						<div class="form-title">
							<h4>Student Details </h4>
						</div>
						<div class="form-body">
<jsp:include page="val.jsp"></jsp:include>
	<form id="WFS_Riz" name="form1" enctype="multipart/form-data" method="post" action="student_uploaded_code.jsp">
      <div class="form-group">
    <label>Upload Photo</label>
     
     <input class="validate[required] form-control" name="st_photo" type="file" id="st_photo">
	 </div>
  <div align="center">
        <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
        <input type="reset"  class="btn btn-danger" name="Reset" value="Reset">
      </div>
</form>
<!-- Content End -->
						   
						   </div>
					</div>
					
					</div>
					
						</div>
					</div>
				</div>
			</div>
		</div>
		

<jsp:include page="footer.jsp"></jsp:include>

<jsp:include page="xscripts.jsp"></jsp:include>

<%
}
else
{
out.println("<script>alert('Your Session Expired. Please Re-Login');document.location='../index.jsp';</script>");
}
%>
