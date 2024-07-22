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
					<!--<h2 class="title1">staff/Owner Details/</h2> -->
					<div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
						<div class="form-title">
							<h4>Change Password</h4>
						</div>
						<div class="form-body">

<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="changepass_code.jsp">
  
  <div class="form-group">
    <label>Current Password</label>
      <input class="validate[required] form-control" name="op" type="password" id="op">   
    </div>
	
      <div class="form-group">
    <label>New Password</label>
	<input class="validate[required] form-control"  name="np" type="password" id="np">
	</div>
	
	<div class="form-group">
    <label>Confirm Password</label>
         <input class="validate[required] form-control" name="cp" type="password" id="cp">   
    </div>
    <div align="center">
        <input type="submit" name="Submit" class="btn btn-primary"value="Change">
        <input type="reset" name="Reset" class="btn btn-active" value="Reset">
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


