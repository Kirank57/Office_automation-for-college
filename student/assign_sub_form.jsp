
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
							<h4>Assign Subject </h4>
						</div>
						<div class="form-body">
<!-- Header Design End -->
	
<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="assign_sub_insert.jsp">
  
  <div class="form-group">
    <label>Select Subject</label>
	      <select class="validate[required] form-control" name="sub_id" id="sub_id">
                  <option value="">-- Select subject --</option>
	        <%
			ResultSet rs=s.stm.executeQuery("select * from subject_details");
			while(rs.next())
			{
			%>
	        <option value="<%=rs.getInt("sub_id")%>"><%=rs.getString("sub_name")%></option>
	        <% } %>
          </select>
      </div>
	  
     <div class="form-group">
    <label>Select Staff</label>
        <select class="validate[required] form-control" name="s_id" id="s_id">
                <option value="">-- Select --</option>
		    <%
			ResultSet rs1=s.stm.executeQuery("select * from staff_details");
			while(rs1.next())
			{
			%>
		    <option value="<%=rs1.getInt("s_id")%>"><%=rs1.getString("s_fname")%></option>
		    <% } %>
          </select>
      </div>
	  
      <div align="center" class="form-group">
        <input type="submit" name="Submit" class="btn btn-primary" value="Submit">
        <input type="reset" name="Reset" class="btn btn-active" value="Reset">
      </div>
</form>
<!-- Footer Design Start -->
						   
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
<!-- Footer Design End -->