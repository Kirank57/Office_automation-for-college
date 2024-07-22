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
							<h4>Notice Details</h4>
						</div>
						<div class="form-body">

<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="notice_insert.jsp">
  
  <div class="form-group">
    <label>Notice To</label>
     <input class="validate[required,custom[onlyLetter]] form-control"name="n_to" type="text" id="n_to">
	 </div>
	 
      <div class="form-group">
    <label>Notice Uploaded Date</label>
	<%@page import="java.util.Date"%>
	<%
	Date d1=new Date();
	int dd,mm,yy;
	  yy=d1.getYear()+1900; mm=d1.getMonth()+1; dd=d1.getDate();
	String dt=yy+"-"+mm+"-"+dd;
	%>
	<input class="validate[required,custom[date]] form-control" value="<%=dt%>" readonly="" name="n_date" type="text" id="n_date">
	</div>
	
	<div class="form-group">
    <label>Notice</label>
     <input class="validate[required] form-control"name="notice" type="text" id="notice">  
	 </div>
	 
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary"value="Submit">
        <input type="reset" name="Reset" class="btn btn-active" value="Reset">
      
  </table>
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

