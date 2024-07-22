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

<jsp:include page="val.jsp"></jsp:include>
<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from assign_sub_details where as_id='"+a+"'");
rs.next();
%>
<form id="fromID"name="form1" method="post" action="assign_sub_update.jsp">
<input name="id" type="hidden" value="<%=a%>">
 <div class="form-group">
    <label>Subject ID</label>
        <select class="validate[required] form-control" name="sub_id" id="sub_id">
          <option value="">-- Select subject --</option>
          <%
			ResultSet rs1=s.stm.executeQuery("select * from subject_details");
			while(rs1.next())
			{
			%>
          <option value="<%=rs1.getInt("sub_id")%>"><%=rs1.getString("sub_name")%></option>
          <% } %>
        </select>
		</div>

 <div class="form-group">
    <label>Subject ID</label>
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

