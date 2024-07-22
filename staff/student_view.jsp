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
						<h4>Student Details | <a href="student_form.jsp" class="btn btn-success">Add new</a></h4>
						<div style="overflow-x:auto;">
	<table class="table table-hover" width="100%"> 
	<thead>
  <tr>
    <td width="68"><div align="center"><strong>Sr.No</strong></div></td>
    <td width="107"><div align="center"><strong>Branch  </strong></div></td>
    <td width="124"><div align="center"><strong>Register NO </strong></div></td>
    <td width="130"><div align="center"><strong> First Name</strong></div></td>
    <td width="141"><div align="center"><strong>Last Name</strong></div></td>
    <td width="94"><div align="center"><strong>Date Of Birth</strong></div></td>
    <td width="111"><div align="center"><strong>Contact</strong></div></td>
    <td width="99"><div align="center"><strong>E-mail ID</strong></div></td>
    <td width="100"><div align="center"><strong>Address</strong></div></td>
    <td width="93"><div align="center"><strong>Student Photo</strong></div></td>
    <td width="130"><div align="center"><strong>Action</strong></div></td>
  </thead>
  </tr>
  <%@page import="java.sql.*"%>
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  int s1=0;
  ResultSet rs=s.stm.executeQuery("select * from student_details sd,branch_details bd where sd.b_id=bd.b_id");
  while(rs.next())
  {
  s1=s1+1;
  int stid=rs.getInt("st_id");
  %>
  </thead>
  <tr>
    <td><div align="center"><%=s1%></div></td>
    <td><div align="center"><%=rs.getString("b_name")%></div></td>
    <td><div align="center"><%=rs.getString("st_regno")%></div></td>
    <td><div align="center"><%=rs.getString("st_fname")%></div></td>
    <td><div align="center"><%=rs.getString("st_lname")%></div></td>
    <td><div align="center"><%=rs.getString("st_dob")%></div></td>
    <td><div align="center"><%=rs.getString("st_content")%></div></td>
    <td><div align="center"><%=rs.getString("st_email")%></div></td>
    <td><div align="center"><%=rs.getString("st_address")%></div></td>
    <td><div align="center"><a title="click to view" href="student_view_photo.jsp?id=<%=stid%>"><img src="../uploads/<%=rs.getString("st_photo")%>" width="100px" height="80px"/></a></div></td>
    <td><div align="center"><a class="btn btn-primary" href="student_edit.jsp?id=<%=stid%>"><i class="fa fa-edit"></i></a> |</a> <a class="btn btn-danger" onClick="return confirm('Are you sure?')" href="student_delete.jsp?id=<%=stid%>"><i class="fa fa-trash"></i></a></div></td>
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
