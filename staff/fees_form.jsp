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
							<h4>Fees Details </h4>
						</div>
						<div class="form-body">

<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="fees_insert.jsp">

<div class="form-group">
    <label>Student ID</label>
              <select class="validate[required] form-control" name="st_id" id="st_id">
		       <option value="">-- Select  --</option>
               <%@page import="java.sql.*"%>
               <%@page import="office.automation"%>
               <jsp:useBean id="s" class="office.automation"/>
               
               <jsp:getProperty name="s" property="conn"/>           
               <%
			ResultSet rs=s.stm.executeQuery("select * from student_details");
			while(rs.next())
			{
			%>
               <option value="<%=rs.getInt("st_id")%>"><%=rs.getString("st_fname")%></option>
               <% } %>
              </select>    
			  </div>  
          
		  <div class="form-group">
    <label>Sem</label>
          <input class="validate[required,custom[onlyNumber]] form-control"name="sem" type="text" id="sem">
        </div>
		
		<div class="form-group">
    <label>Total Fees</label>
          <input class="validate[required,custom[onlyNumber]] form-control" maxlength="5"name="f_total" type="text" id="f_total">
        </div>
		
		<div class="form-group">
    <label>Paid Fees</label>
          <input class="validate[required,custom[onlyNumber]] form-control" maxlength="5"name="f_paid" type="text" id="f_paid">
        </div>
		
		<div class="form-group">
    <label> Fees Paid Date</label>
		<%@page import="java.util.Date"%>
	<%
	Date d1=new Date();
	int dd,mm,yy;
	 yy=d1.getYear()+1900; mm=d1.getMonth()+1; dd=d1.getDate(); 
	String dt=yy+"-"+mm+"-"+dd;
	%>
    <input class="validate[required,custom[date]] form-control"value="<%=dt%>" readonly="" name="f_p_date" type="text" id="f_p_date">
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

