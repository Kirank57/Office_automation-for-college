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
							<h4>Fees Details </h4>
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
<form id="WFS_Riz" name="form1" method="post" action="fees_update.jsp">
<input name="id" type="hidden" value="<%=a%>">
<div class="form-group">
    <label>Student ID</label>
	   <select class="validate[required] form-control" name="st_id" id="st_id">
		 <option value="">-- Select --</option>
      <%
			ResultSet rs1=s.stm.executeQuery("select * from student_details");
			while(rs1.next())
			{
			%>
      <option value="<%=rs1.getInt("st_id")%>"><%=rs1.getString("st_fname")%></option>
      <% } %>
  </select>      
</div>
	<%
	ResultSet rs=s.stm.executeQuery("select * from fees_details where f_id='"+a+"'");
rs.next();
	%>
	 <div class="form-group">
    <label>Sem</label>
        <input class="validate[required,custom[onlyNumber]] form-control"name="sem" type="text" id="sem" value="<%=rs.getString("sem")%>">
      </div>
	  
	  <div class="form-group">
    <label>Total Fees</label>
        <input class="validate[required,custom[onlyNumber]] form-control" maxlength="5" name="f_total" type="text" id="f_total" value="<%=rs.getString("f_total")%>">
      </div>
	  
	  <div class="form-group">
    <label>Paid Fees</label>
      <input class="validate[required,custom[onlyNumber]] form-control" maxlength="5" name="f_paid" type="text" id="f_paid" value="<%=rs.getString("f_paid")%>">
      <div align="center"></div>
	  
		<div class="form-group">
    <label> Fees Paid Date</label>
        <input class="validate[required,custom[date]] form-control"name="f_p_date" type="text" id="f_p_date" value="<%=rs.getString("f_p_date")%>">
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

