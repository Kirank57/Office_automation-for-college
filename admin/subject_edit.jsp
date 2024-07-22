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
							<h4>Subject Details </h4>
						</div>
						<div class="form-body">


<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("id");
%>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="subject_update.jsp">
<input name="id" type="hidden" value="<%=a%>">
<div class="form-group">
    <label>Branch ID</label>
	  <select class="validate[required] form-control" name="b_id" id="b_id">
          <option value="">-- Select Branch --</option>
			<%
			ResultSet rs1=s.stm.executeQuery("select * from branch_details");
			while(rs1.next())
			{
			%>
			<option value="<%=rs1.getInt("b_id")%>"><%=rs1.getString("b_name")%></option>
			<% } %>
        </select>
</div>
	<%
	ResultSet rs=s.stm.executeQuery("select * from subject_details where sub_id='"+a+"'");
rs.next();
	%>
    
	<div class="form-group">
    <label>Subject Name</label>
        <input class="validate[required,custom[onlyLetter]] form-control"name="sub_name" type="text" id="sub_name" value="<%=rs.getString("sub_name")%>">
      </div>
	  
	  
	  <div class="form-group">
    <label>Subject Description</label>	  
        <textarea class="validate[required,custom[onlyLetter]] form-control"name="sub_description" id="sub_description"><%=rs.getString("sub_description")%></textarea>
      </div>
	  
      <td colspan="2">
        <div align="center">
          <input type="submit" name="Submit" class="btn btn-primary" value="Update">
          <input type="reset" name="Reset" class="btn btn-active" value="Reset">
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
