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
							<h4>Rating Details </h4>
						</div>
						<div class="form-body">

<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="rating_insert.jsp">
  
      
	  <div class="form-group">
    <label>Student ID</label>
          <select readonly class="validate[required] form-control" name="st_id" id="st_id">
            <!--<option value="">-- Select  --</option> -->
            <%@page import="java.sql.*"%>
            <%@page import="office.automation"%>
            <jsp:useBean id="s" class="office.automation"/>
            
            <jsp:getProperty name="s" property="conn"/>        
            <%
			String un=session.getAttribute("uname").toString();
			ResultSet rs=s.stm.executeQuery("select * from student_details where st_email='"+un+"'");
			while(rs.next())
			{
			%>
            <option value="<%=rs.getInt("st_id")%>"><%=rs.getString("st_fname")%></option>
            <% } %>
          </select>   
		  </div>   
    
	<div class="form-group">
    <label>Staff ID</label>
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
     
	 <div class="form-group">
    <label>Teaching</label> 
        <select class="validate[required] form-control" name="teaching" id="teaching">
		<option value="">-- Select --</option>
		<option value="1">*</option><option value="2">**</option><option value="3">***</option><option value="4">****</option><option value="5">*****</option>
		</select>
		</div>
      
      <div class="form-group">
    <label>Extra Activity</label>
        <select class="validate[required] form-control" name="extra_activity" id="extra_activity">
		<option value="">-- Select --</option>
		<option value="1">*</option><option value="2">**</option><option value="3">***</option><option value="4">****</option><option value="5">*****</option>
		</select>
     </div>
	 
	 <div class="form-group">
    <label>Performance</label>
       <select class="validate[required] form-control" name="performance" id="performance">
		<option value="">-- Select --</option>
		<option value="1">*</option><option value="2">**</option><option value="3">***</option><option value="4">****</option><option value="5">*****</option>
		</select>
      </div>
	  
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary" value="Submit">
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
