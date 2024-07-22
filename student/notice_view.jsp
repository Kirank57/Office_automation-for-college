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
						<h4>Notice Details <!--| <a href="notice_form.jsp" class="btn btn-success">Add new</a> --></h4>
						<div style="overflow-x:auto;">
	<table class="table table-hover" width="100%"> 
	<thead>

  <tr>
    <td><div align="center"><strong>Sr. No</strong></div></td>
    <td><div align="center"><strong>From</strong></div></td>
	<td><div align="center"><strong> To</strong></div></td>
	<td><div align="center"><strong>Notice</strong></div></td>
    <td><div align="center"><strong>Sent Date</strong></div></td>
    <td><div align="center"><strong>Status</strong></div></td>
	  </thead>
  </tr>
  <%@page import="java.sql.*"%>
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  int s1=0;
  String un=session.getAttribute("uname").toString();
  ResultSet rs=s.stm.executeQuery("select * from notice_details nd,student_details sd where nd.n_to=sd.st_id and sd.st_email='"+un+"'");
  while(rs.next())
  {
  s1=s1+1;
  int nid=rs.getInt("n_id");
  %>
  <tr>
    <td ><div align="center"><%=s1%></div></td>
	<td><div align="center"><%=rs.getString("n_from")%></div></td>
    <td><div align="center"><%=rs.getString("st_fname")%>&nbsp;<%=rs.getString("st_lname")%></div></td>
     <td><div align="center"><%=rs.getString("notice")%></div></td>
	<td><div align="center"><%=rs.getString("n_date")%></div></td>
    <td><div align="center"><%=rs.getString("status")%></div></td>
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

