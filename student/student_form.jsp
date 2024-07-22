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
<form id="WFS_Riz" name="form1" method="post" action="student_insert.jsp">
  
  <div class="form-group">
    <label>Branch</label>
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
    <label>Register No</label>
    <input class="validate[required] form-control"name="st_regno" type="text" id="st_regno">
	  </div>
    
	<div class="form-group">
    <label>First Name</label>
      <input class="validate[required,custom[onlyLetter]] form-control"name="st_fname" type="text" id="st_fname">
    </div>
	
   <div class="form-group">
    <label>Last Name</label>
     <input class="validate[required,custom[onlyLetter]] form-control" name="st_lname" type="text" id="st_lname">
     </div>
	 
	<div class="form-group">
    <label>Date Of Birth</label>
	</br>
      <div style="float:left "><img src="calender/cal.gif" align="right" onMouseOver="fnInitCalendar(this,'st_dob','style=calendar.css,expiry=false,instance=single,close=true')"></div>
	  <input class="validate[required,custom[date]] form-control" readonly="" name="st_dob" type="text" id="st_dob">
	  </div>
	  
	 <div class="form-group">
    <label>Contact</label>
      <input class="validate[required,custom[mobile]] form-control"name="st_content" type="text" id="st_content">
     </div>
	 
	<div class="form-group">
    <label>E-mail</label>
      <input class="validate[required,custom[email]] form-control"name="st_email" type="text" id="st_email">
	   </div>
	   
     <div class="form-group">
    <label>Address</label>
    <textarea class="validate[required,custom[onlyLetter]] form-control"name="st_address" id="st_address"></textarea>
    </div>
	
      <td height="31" colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary"value="Submit">
        <input type="reset" name="Reset"  class="btn btn-active"value="Reset">
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

