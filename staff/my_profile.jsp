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
String un=session.getAttribute("uname").toString();
ResultSet rs=s.stm.executeQuery("select * from staff_details where s_email='"+un+"'");
rs.next();
%>
<jsp:include page="val.jsp"></jsp:include>
<div><img src="../uploads/<%=rs.getString("s_photo")%>" width="150px" height="150px"/>
<h5 style="padding-top:4px"><a href="staff_uploaded_photo.jsp">Click to Change Pic</a></h5>
</div>
</br>
<form id="WFS_Riz" name="form1" method="post" action="staff_update.jsp">
<input value="<%=rs.getInt("s_id")%>" type="hidden" name="id" />      
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
        <input class="validate[required,custom[email]] form-control" readonly="" name="s_email" type="text" id="s_email" value="<%=rs.getString("s_email")%>">
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
    <label>Salary</label>
        <input class="validate[required,custom[onlyNumber]] form-control"name="s_salary" type="text" id="s_salary" value="<%=rs.getString("s_salary")%>">
      </div>
	  
    
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary" value="update">
        <input type="reset" name="Reset"  class="btn btn-default" value="Reset">
      </div>
  </table>
  <div align="center"></div>
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


