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
							<h4>Salary Details | <a href="salary_view.jsp">Back</a></h4>
						</div>
						<div class="form-body">
						


<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="salary.jsp">
 
 
 <div class="form-group">
    <label>Staff ID</label>
         <select class="validate[required] form-control" name="s_id" id="s_id">
           <option value="">-- Select  --</option>
           <%@page import="java.sql.*"%>
           <%@page import="office.automation"%>
                  <jsp:useBean id="s" class="office.automation"/>
	                
                  <jsp:getProperty name="s" property="conn"/>                              
           <%
			ResultSet rs=s.stm.executeQuery("select * from staff_details");
			while(rs.next())
			{
			%>
                  <option value="<%=rs.getInt("s_id")%>" title="<%=rs.getString("s_designation")%>"><%=rs.getString("s_fname")%>&nbsp;<%=rs.getString("s_lname")%></option>
           <% } %>
       </select>     
	    </div>
	   
	  
    
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary"value="Submit">
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
<%
}
else
{
out.println("<script>alert('Your Session Expired. Please Re-Login');document.location='../index.jsp';</script>");
}
%>


