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
							<h4>Staff Details </h4>
						</div>
						<div class="form-body">

<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="staff_insert.jsp">
  
  <div class="form-group">
    <label>Branch ID</label>
	       <select class="validate[required] form-control" name="b_id" id="b_id">
                  <option value="">-- Select Branch --</option>
	         <%@page import="java.sql.*"%>
	         <%@page import="office.automation"%>
	         <jsp:useBean id="s" class="office.automation"/>
	         
	         <jsp:getProperty name="s" property="conn"/>            
	         <%
			ResultSet rs=s.stm.executeQuery("select * from branch_details");
			while(rs.next())
			{
			%>
	         <option value="<%=rs.getInt("b_id")%>"><%=rs.getString("b_name")%></option>
	         <% } %>
          </select>
       </div>
	   
	   <div class="form-group">
    <label>First Name</label>
          <input class="validate[required,custom[onlyLetter]] form-control"name="s_fname" type="text" id="s_fname">
       </div>
	   
	   <div class="form-group">
    <label>Last Name</label>
          <input class="validate[required,custom[onlyLetter]] form-control"name="s_lname" type="text" id="s_lname">
		  </div>
       
	   <div class="form-group">
    <label>Contact No</label>
          <input class="validate[required,custom[mobile]] form-control"name="s_contact" type="text" id="s_contact">
       </div>
	   
	   <div class="form-group">
    <label>E-mail ID</label>
          <input class="validate[required,custom[email]] form-control"name="s_email" type="text" id="s_email">
       </div>
	   
	   <div class="form-group">
    <label>Qualification</label>
            <input name="s_qualification" type="text" class="validate[required,custom[onlyLetter]] form-control" id="s_qualification" value="">
      </div>
	  
	  <div class="form-group">
    <label>Designation</label>
          <input class="validate[required,custom[onlyLetter]] form-control" name="s_designation" type="text" id="s_designation">
        
		<div class="form-group">
    <label>Address</label>
            <textarea class="validate[required] form-control" name="s_address" id="s_address"></textarea>
        </div>
		
		<div class="form-group">
    <label>Salary</label>
          <input class="validate[required,custom[onlyNumber]] form-control" name="s_salary" type="text" id="s_salary">
        </div>
		
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary"value="Submit">
        <input type="reset" name="Reset"  class="btn btn-active"value="Reset">
      </div>
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

