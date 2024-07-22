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
						<h4>Subject Details | <a href="subject_form.jsp" class="btn btn-success">Add new</a></h4>
						<div style="overflow-x:auto;">
	<table class="table table-hover" width="100%"> 
	<thead>
  <tr>
    <td width="38" height="39"><div align="center" class="style1">SR No </div></td>
    <td width="102"><div align="center" class="style1">Branch </div></td>
    <td width="101"><div align="center" class="style1">Subject Name </div></td>
    <td width="96"><div align="center" class="style1">Subject Description </div></td>
    <td width="96"><div align="center" class="style1">Action</div></td>
 </thead>
  </tr>
  <%@page import="java.sql.*"%>
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  int s1=0;
  ResultSet rs=s.stm.executeQuery("select * from subject_details sd,branch_details bd where sd.b_id=bd.b_id");
  while(rs.next())
  {
  s1=s1+1;
  int subid=rs.getInt("sub_id");
  %>
  <thead>
  <tr>
    <td height="36"><div align="center"><%=s1%></div></td>
    <td><div align="center"><%=rs.getString("b_name")%></div></td>
    <td><div align="center"><%=rs.getString("sub_name")%></div></td>
    <td><div align="center"><%=rs.getString("sub_description")%></div></td>
    <td><div align="center"><a class="btn btn-primary" href="subject_edit.jsp?id=<%=subid%>"><i class="fa fa-edit"></i>t </a> | <a  class="btn btn-danger" onClick="return confirm('Are you sure?')" href="subject_delete.jsp?id=<%=subid%>"><i class="fa fa-trash"></i>
	</div></td>
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
