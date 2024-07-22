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


<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("id");
%>
<form name="form1" method="post" action="rating_update.jsp">
<input name="id" type="hidden" value="<%=a%>">

 <div class="form-group">
    <label>Student ID</label>
     <select class="validate[required] form-control" name="st_id" id="st_id">
	   <option value="">-- Select  --</option>
      <%
			ResultSet rs1=s.stm.executeQuery("select * from student_details");
			while(rs1.next())
			{
			%>
      <option value="<%=rs1.getInt("st_id")%>"><%=rs1.getString("st_fname")%></option>
      <% } %>
  </select>       
      </div>
	  
	  <div class="form-group">
    <label>Staff ID</label>
     <select class="validate[required] form-control" name="s_id" id="s_id">
        <option value="">-- Select --</option>
			<%
			ResultSet rs2=s.stm.executeQuery("select * from staff_details");
			while(rs2.next())
			{
			%>
			<option value="<%=rs2.getInt("s_id")%>"><%=rs2.getString("s_fname")%></option>
			<% } %>
        </select>
      </div>
	  <%
	  ResultSet rs=s.stm.executeQuery("select * from rating_details where r_id='"+a+"'");
rs.next();
	  %>
	   </div>	  
	  
	   <div class="form-group">
    <label>Teaching</label>
      <input class="validate[required,custom[onlyLetter]] form-control"name="teaching" type="text" id="teaching" value="<%=rs.getString("teaching")%>">
         </div>

<div class="form-group">
    <label>Extra Activity</label>
      <input class="validate[required,custom[onlyLetter]] form-control"name="extra_activity" type="text" id="extra_activity" value="<%=rs.getString("extra_activity")%>">
         </div>

    <div class="form-group">
    <label>Performance</label>
      <input class="validate[required,custom[onlyLetter]] form-control"name="performance" type="text" id="performance" value="<%=rs.getString("performances")%>">
         </div>

      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" value="Update">
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

