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
				<div class="tables">
					<!--<h2 class="title1">Tables</h2> -->
		               <div class="bs-example widget-shadow" data-example-id="hoverable-table"> 
						<h4>Salary Details<!-- | <a href="salary_form.jsp" class="btn btn-success">Add new</a> --></h4>
						<div style="overflow-x:auto;">
	<table class="table table-hover" width="100%"> 
	<thead>
  <tr>
    <td width="59" height="27"><div align="center"><strong>SR No </strong></div></td>
    <td width="110"><div align="center"><strong>Staff </strong></div></td>
    <td width="108"><div align="center"><strong>Salary Amount </strong></div></td>
    <td width="116"><div align="center"><strong>Salary Date</strong></div></td>
    <td width="101"><div align="center"><strong>Status</strong></div></td>
    <!--<td width="101"><div align="center"><strong>Action</strong></div></td> -->
  </thead>
  </tr>
  <%@page import="java.sql.*"%>
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  int s1=0;
  String un=session.getAttribute("uname").toString();
  ResultSet rs=s.stm.executeQuery("select * from salary_details sal,staff_details sd where sal.s_id=sd.s_id and sd.s_email='"+un+"'");
  while(rs.next())
  {
  s1=s1+1;
  int salid=rs.getInt("sal_id");
  %>
  <thead>
  <tr>
    <td><div align="center"><%=s1%></div></td>
    <td><div align="center"><%=rs.getString("s_fname")%></div></td>
    <td><div align="center"><%=rs.getString("sal_amount")%></div></td>
    <td><div align="center"><%=rs.getString("sal_date")%></div></td>
     <td><div align="center"><font size="4" color="#009900">Paid</font></div></td>
  </thead>
  </tr>
  <%
  }
  %>
</tbody>
</table>
					   </div>
					   
					   </div>
			    </div>
	        </div>
		</div>

<script>
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
  })</script>
		
<jsp:include page="footer.jsp"></jsp:include>

<jsp:include page="xscripts.jsp"></jsp:include>
<%
}
else
{
out.println("<script>alert('Your Session Expired. Please Re-Login');document.location='../index.jsp';</script>");
}
%>
