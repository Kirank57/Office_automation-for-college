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
						<h4>Branch Details| <a href="branch_form.jsp" class="btn btn-success">Add new</a></h4>
						<div style="overflow-x:auto;">
	<table class="table table-hover" width="100%"> 
	<thead>

  <tr>
    <td width="80"><div align="center"><strong>Sr.No</strong></div></td>
    <td width="181"><div align="center"><strong>Branch Name</strong></div></td>
    <td width="221"><div align="center"><strong>Branch Description </strong></div></td>
    <td width="140"><div align="center"><strong>Branch HOD </strong></div></td>
    <td width="118"><div align="center"><strong>Branch Fees </strong></div></td>
    <td width="142"><div align="center"><strong>Action</strong></div></td>
  </thead>
  </tr>
  <%@page import="java.sql.*"%>
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  int s1=0;
  ResultSet rs=s.stm.executeQuery("select * from branch_details");
  while(rs.next())
  {
  s1=s1+1;
  int bid=rs.getInt("b_id");
  %>
  <tbody>
  <tr>
    <td><div align="center"><%=s1%></div></td>
    <td><div align="center"><%=rs.getString("b_name")%></div></td>
    <td><div align="center"><%=rs.getString("b_description")%></div></td>
    <td><div align="center"><%=rs.getString("b_hod")%></div></td>
    <td><div align="center"><%=rs.getString("b_fees")%></div></td>
    <td><div align="center"></a><a class="btn btn-primary" href="branch_edit.jsp?id=<%=bid%>"><i class="fa fa-edit"></i></a> | <a class="btn btn-danger" onClick="return confirm('Are you sure?')" href="branch_delete.jsp?id=<%=bid%>"><i class="fa fa-trash"></i></a></div></td>
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
