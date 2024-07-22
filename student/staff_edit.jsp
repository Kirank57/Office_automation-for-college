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


<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from staff_details where s_id='"+a+"'");
rs.next();
%>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="staff_update.jsp">
<input name="id" type="hidden" value="<%=a%>">

<div class="form-group">
    <label>Branch ID</label>
	  <select class="validate[required] form-control" name="b_id" id="b_id">
          <option value="">-- Select Branch --</option>
			<jsp:useBean id="s1" class="office.automation"/>
<jsp:getProperty name="s1" property="conn"/>
			<%
			ResultSet rs1=s1.stm.executeQuery("select * from branch_details");
			while(rs1.next())
			{
			%>
			<option value="<%=rs1.getInt("b_id")%>"><%=rs1.getString("b_name")%></option>
			<% } %>
        </select>
</div>
      <div class="form-group">
    <label>First Name</label>
	    <input class="validate[required,custom[onlyLetter]] form-control"name="s_fname" type="text" id="s_fname" value="<%=rs.getString("s_fname")%>">
      </div>
	  
	    <div class="form-group">
    <label>Last Name</label>
        <input class="validate[required,custom[onlyLetter]] form-control"name="s_lname" type="text" id="s_lname" value="<%=rs.getString("s_lname")%>">
      </div>
	  
	   <div class="form-group">
    <label>Contact No</label>
        <input class="validate[required,custom[mobile]] form-control"name="s_contact" type="text" id="s_contact" value="<%=rs.getString("s_contact")%>">
</div>

<div class="form-group">
    <label>E-mail ID</label>
        <input class="validate[required,custom[email]] form-control"name="s_email" type="text" id="s_email" value="<%=rs.getString("s_email")%>">
      </div>
	  
	  <div class="form-group">
    <label>Qualification</label>
        <textarea class="validate[required,custom[onlyLetter]] form-control"name="s_qualification" id="s_qualification"><%=rs.getString("s_qualification")%></textarea>
      </div>
	  
	   <div class="form-group">
    <label>Designation</label>
        <input class="validate[required,custom[onlyLetter]] form-control"name="s_designation" type="text" id="s_designation" value="<%=rs.getString("s_designation")%>">
      </div>
	  
	  <div class="form-group">
    <label>Address</label>
        <textarea class="validate[required] form-control"name="s_address" id="s_address"><%=rs.getString("s_address")%></textarea>
      </div>
	  
	  <div class="form-group">
    <label>Photo</label>
        <textarea class="validate[required] form-control"name="s_photo" id="s_photo"><%=rs.getString("s_photo")%></textarea>
      </div>
	  
	  <div class="form-group">
    <label>Salary</label>
        <input class="validate[required,custom[onlyNumber]] form-control"name="s_salary" type="text" id="s_salary" value="<%=rs.getString("s_salary")%>">
      </div>
	  
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" value="update">
        <input type="reset" name="Reset" value="Reset">
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


