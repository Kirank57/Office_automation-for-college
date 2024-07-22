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
							<h4>Quary Details</h4>
						</div>
						<div class="form-body">

<jsp:include page="val.jsp"></jsp:include>

 <%@page import="java.sql.*"%>
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>

<form id="WFS_Riz" name="form1" method="post" action="quary_insert.jsp">
  
  <div class="form-group">
    <label>Quary From</label>
        <select readonly class="validate[required] form-control" name="q_from" id="q_from">
        <%
		String un=session.getAttribute("uname").toString();
		ResultSet rs=s.stm.executeQuery("select * from student_details where st_email='"+un+"'");
		while(rs.next())
		{
		%>
		<option value="<%=rs.getInt("st_id")%>"><%=rs.getString("st_fname")%>&nbsp;<%=rs.getString("st_lname")%></option>
	   <% } %>
	   </select>    
	   </div>
	   
	<div class="form-group">
    <label>Quary To</label>
      <select  class="validate[required] form-control" name="q_to" id="q_to">
	  <option value="">-- Select --</option>
        <%
		
		ResultSet rs1=s.stm.executeQuery("select * from staff_details");
		while(rs1.next())
		{
		%>
		<option value="<%=rs1.getInt("s_id")%>"><%=rs1.getString("s_fname")%>&nbsp;<%=rs1.getString("s_lname")%></option>
	   <% } %>
	   </select>  
	  </div>
	  
	<div class="form-group">
    <label>Quary</label>
      <textarea class="validate[required] form-control" name="quary" id="quary"></textarea>
	  </div>
	  
   <div class="form-group">
    <label>Quary Uploaded Date</label>
	 <%@page import="java.util.Date"%>
	<%
	Date d1=new Date();
	int dd,mm,yy;
	 yy=d1.getYear()+1900; mm=d1.getMonth()+1; dd=d1.getDate();
	String dt=yy+"-"+mm+"-"+dd;
	%>
	<input class="validate[required,custom[date]] form-control" value="<%=dt%>"readonly="" name="uploaded_date" type="text" id="uploaded_date">
	 

	  
      <td height="31" colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary" value="Submit">
        <input type="reset" name="Reset" class="btn btn-active" value="Reset">
  </table>
</form>
<!-- Footer Design Start -->
						   
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
<!-- Footer Design End -->