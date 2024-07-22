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
						<h4>Completed Sylabus | <a href="com_sym_form.jsp" class="btn btn-success">Add new</a></h4>
						<div style="overflow-x:auto;">
	<table class="table table-hover" width="100%"> 
	<thead>
  <tr>
    <td><div align="center"><strong>Sr.NO</strong></div></td>
    <td><div align="center"><strong>Title</strong></div></td>
    <td><div align="center"><strong>Description</strong></div></td>
    <td><div align="center"><strong>Uploaded Date</strong></div></td>
    <td><div align="center"><strong>Uploaded By</strong></div></td>
    <td><div align="center"><strong>Status</strong></div></td>
    <td><div align="center"><strong>Action</strong></div></td>
  </tr>
  </thead>
  <%@page import="java.sql.*"%>
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  int s1=0; 
  String un=session.getAttribute("uname").toString();
  ResultSet rs=s.stm.executeQuery("select * from completed_syllabus cd,staff_details sd where sd.s_id=cd.uploaded_by and sd.s_email='"+un+"'");
  while(rs.next())
  {
  s1=s1+1;
  int csid=rs.getInt("cs_id");
  String st=rs.getString("status");
  %>
  <tbody>
  <tr>
    <td><div align="center"><%=s1%></div></td>
    <td><div align="center"><%=rs.getString("title")%></div></td>
    <td><div align="center"><%=rs.getString("description")%></div></td>
    <td><div align="center"><%=rs.getString("uploaded_date")%></div></td>
    <td><div align="center"><%=rs.getString("s_fname")%>&nbsp;<%=rs.getString("s_lname")%></div></td>
    <% if(st.equals("Completed")) { %>
	<td><div align="center"><font size="4" color="#009900">Completed</font></div></td>
	<% } else { %>
	<td><div align="center"><font size="4" color="#FF0000">pending</font></div></td>
	<% } %>
    <td><div align="center"><!--<a class="btn btn-primary" href="com_sym_edit.jsp?id=<%=csid%>"><i class="fa fa-edit"></i></a> |  --><a class="btn btn-danger" onClick="return confirm('Are you sure?')" href="com_sym_delete.jsp?id=<%=csid%>"><i class="fa fa-trash"></i></a></div></td>
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
