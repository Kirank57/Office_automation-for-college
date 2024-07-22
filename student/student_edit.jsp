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


<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from Student_details where st_id='"+a+"'");
rs.next();
%>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="student_update.jsp">
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
    <label>Register No</label>
      <input class="validate[required] form-control"name="st_regno" type="text" id="st_regno" value="<%=rs.getString("st_regno")%>">
	  </div>    
	
	<div class="form-group">
    <label>First Name</label>
      <input class="validate[required,custom[onlyLetter]] form-control" name="st_fname" type="text" id="st_fname" value="<%=rs.getString("st_fname")%>">
	  </div>
   
   <div class="form-group">
    <label>Last Name</label>
      <td><input class="validate[required,custom[onlyLetter]] form-control" name="st_lname" type="text" id="st_lname" value="<%=rs.getString("st_lname")%>"></td>
   
   <div class="form-group">
    <label>Date Of Birth</label>
      <input class="validate[required,custom[date]] form-control"name="st_dob" type="text" id="st_dob" value="<%=rs.getString("st_dob")%>">
	  </div>
    
	<div class="form-group">
    <label>Contact</label>
      <input class="validate[required,custom[onlyNumber]] form-control"name="st_content" type="text" id="st_content" value="<%=rs.getString("st_content")%>">
	  </div>
    
	<div class="form-group">
    <label>E-mail</label>
  <input class="validate[required] form-control"name="st_email" type="text" id="st_email" value="<%=rs.getString("st_email")%>">
  </div>
    
	 <div class="form-group">
    <label>Address</label>
      <textarea class="validate[required] form-control"name="st_address" id="st_address"><%=rs.getString("st_address")%></textarea>
	  </div>
   
    <div class="form-group">
    <label>Photo</label>
      <input class="validate[required] form-control"name="st_photo" type="text" id="st_photo" value="<%=rs.getString("st_photo")%>">
	  </div>
	  
	       <td height="31" colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary"value="Update">
        <input type="reset" name="Reset" class="btn btn-active"value="Reset">
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


