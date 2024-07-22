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
							<h4>Branch Details </h4>
						</div>
						<div class="form-body"></div>

<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 

<jsp:include page="val.jsp"></jsp:include>
<%
String a=request.getParameter("id");
%>
<form id="WFS_Riz" name="form1" method="post" action="salary_update.jsp">
<input name="id" type="hidden" value="<%=a%>">
 <div class="form-group">
    <label>Staff ID</label>
	  <select class="validate[required] form-control" name="s_id" id="s_id">
          <option value="">-- Select  --</option>
			<%
			ResultSet rs1=s.stm.executeQuery("select * from staff_details");
			while(rs1.next())
			{
			%>
			<option value="<%=rs1.getInt("s_id")%>"><%=rs1.getString("s_fname")%></option>
			<% } %>
        </select>
</div>
	<%

ResultSet rs=s.stm.executeQuery("select * from salary_details where sal_id='"+a+"'");
rs.next();
%>
    
	  <div class="form-group">
    <label>Salary Amount</label>
        <input class="validate[required,custom[onlyNumber]] form-control"name="sal_amount" type="text" id="sal_amount" value="<%=rs.getString("sal_amount")%>">
      </div>
      
	  <div class="form-group">
    <label>Salary Date</label>
        <input class="validate[required,custom[date]] form-control"name="sal_date" type="text" id="sal_date" value="<%=rs.getString("sal_date")%>">
      </div>
	  
	  <div class="form-group">
    <label>Status</label>
        <input class="validate[required,custom[onlyLetter]] form-control"name="status" type="text" id="status" value="<%=rs.getString("status")%>">
      </div>

      <td colspan="2"><div align="center">
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


