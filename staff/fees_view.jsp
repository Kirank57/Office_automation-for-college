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
						<h4>Fees Details | <a href="fees_form.jsp" class="btn btn-success">Add new</a></h4>
						<div style="overflow-x:auto;">
	<table class="table table-hover" width="100%"> 
	<thead>

  <tr>
    <td width="53"><div align="center"><strong>SR.No</strong></div></td>
    <td width="83"><div align="center"><strong>Student ID </strong></div></td>
    <td width="78"><div align="center"><strong>Semester</strong></div></td>
    <td width="77"><div align="center"><strong>Total Fees </strong></div></td>
    <td width="91"><div align="center"><strong>Paid Fees </strong></div></td>
    <td width="115"><div align="center"><strong>Paid Dtae </strong></div></td>
    <td width="127"><div align="center"><strong>Action</strong></div></td>
  </tr>
    <%@page import="java.sql.*"%>
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  int s1=0;
  ResultSet rs=s.stm.executeQuery("select * from fees_details fd,student_details std where fd.st_id=std.st_id");
  while(rs.next())
  {
  s1=s1+1;
  int fid=rs.getInt("f_id");
  %>
<tbody>
  <tr>
    <td><div align="center"><%=s1%></div></td>
    <td><div align="center"><%=rs.getString("st_fname")%></div></td>
    <td><div align="center"><%=rs.getString("sem")%></div></td>
    <td><div align="center"><%=rs.getString("f_total")%></div></td>
    <td><div align="center"><%=rs.getString("f_paid")%></div></td>
    <td><div align="center"><%=rs.getString("f_p_date")%></div></td>
    <td> <div align="center"><a class="btn btn-primary" href="fees_edit.jsp?id=<%=fid%>"><i class="fa fa-edit"></i></a> | <a class="btn btn-danger"onClick="return confirm('Are you sure?')" href="fees_delete.jsp?id=<%=fid%>"><i class="fa fa-trash"></i></a>
        </div>
    </div></td>
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
