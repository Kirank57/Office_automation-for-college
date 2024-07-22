
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
						<h4>Staff Details| <a href="staff_form.jsp" class="btn btn-success">Add new</a></h4>
						<div style="overflow-x:auto;">
	<table class="table table-hover" width="100%"> 
	<thead>
  <tr>
    <td width="46" height="50"><div align="center"><strong>SR.No</strong></div></td>
    <td width="88"><div align="center"><strong>Branch ID </strong></div></td>
    <td width="79"><div align="center"><strong>First Name </strong></div></td>
    <td width="83"><div align="center"><strong>Last Name </strong></div></td>
    <td width="98"><div align="center"><strong>Contact </strong></div></td>
    <td width="98"><div align="center"><strong>E-mail ID </strong></div></td>
    <td width="104"><div align="center"><strong>Qualification </strong></div></td>
    <td width="100"><div align="center"><strong>Designation </strong></div></td>
    <td width="88"><div align="center"><strong>Address </strong></div></td>
    <td width="91"><div align="center"><strong> Photo </strong></div></td>
    <td width="68"><div align="center"><strong>Salary </strong></div></td>
    <td width="132"><div align="center"><strong>Action</strong></div></td>
  </tr>
  <%@page import="java.sql.*"%>
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  int s1=0;
  ResultSet rs=s.stm.executeQuery("select * from staff_details sd,branch_details bd where sd.b_id=bd.b_id");
  while(rs.next())
  {
  s1=s1+1;
  int sid=rs.getInt("s_id");
  %>
  <tr>
    <td height="58"><div align="center"><%=s1%></div></td>
    <td><div align="center"><%=rs.getString("b_name")%></div></td>
    <td><div align="center"><%=rs.getString("s_fname")%></div></td>
    <td><div align="center"><%=rs.getString("s_lname")%></div></td>
    <td><div align="center"><%=rs.getString("s_contact")%></div></td>
    <td><div align="center"><%=rs.getString("s_email")%></div></td>
    <td><div align="center"><%=rs.getString("s_qualification")%></div></td>
    <td><div align="center"><%=rs.getString("s_designation")%></div></td>
    <td><div align="center"><%=rs.getString("s_address")%></div></td>
    <td><div align="center"> <a title="click to view" href="staff_view_photo.jsp?id=<%=sid%>"><img src="../uploads/<%=rs.getString("s_photo")%>" width="100px" height="80px"/></a></div></td>
    <td><div align="center"><%=rs.getString("s_salary")%></div></td>
    <td><div align="center"><a class="btn btn-primary" href="staff_edit.jsp?id=<%=sid%>"><i class="fa fa-edit"></i></a> |<a class="btn btn-danger"onClick="return confirm('Are you sure?')" href="staff_delete.jsp?id=<%=sid%>"><i class="fa fa-trash"></i></a></div></td>
  </tr>
  <%
  }
  %>
</table>
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
