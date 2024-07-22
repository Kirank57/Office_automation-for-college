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
						<h4>Fees Details</h4>
						<div style="overflow-x:auto;">
	<table class="table table-hover" width="100%"> 
	<thead>

  <tr>
    <td width="53"><div align="center"><strong>SR.No</strong></div></td>
    <td width="83"><div align="center"><strong>Student ID </strong></div></td>
    <td width="78"><div align="center"><strong>Semester</strong></div></td>
    <td width="77"><div align="center"><strong>Total Fees </strong></div></td>
    <td width="91"><div align="center"><strong>Paid Fees </strong></div></td>
	<td width="91"><div align="center"><strong>Blc Fees </strong></div></td>
    <td width="115"><div align="center"><strong>Paid Date </strong></div></td>
	<td width="115"><div align="center"><strong>Status</strong></div></td>
  </tr>
    <%@page import="java.sql.*"%>
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  int s1=0;
  String un=session.getAttribute("uname").toString();
  ResultSet rs=s.stm.executeQuery("select * from fees_details fd,student_details std where fd.st_id=std.st_id and std.st_email='"+un+"'");
  while(rs.next())
  {
  s1=s1+1;
  int fid=rs.getInt("f_id");
  String tf=rs.getString("f_total"); int tfs=Integer.parseInt(tf);
  String tp=rs.getString("f_paid"); int tpd=Integer.parseInt(tp);
  int blc=tfs-tpd;
  %>
<tbody>
  <tr>
    <td><div align="center"><%=s1%></div></td>
    <td><div align="center"><%=rs.getString("st_fname")%></div></td>
    <td><div align="center"><%=rs.getString("sem")%></div></td>
    <td><div align="center"><font size="4" color="#0099FF"><%=tfs%></div></td>
    <td><div align="center"><font size="4" color="#009900"><%=tpd%></font></div></td>
	<td><div align="center"><font size="4" color="#993300"><%=blc%></div></td>
    <td><div align="center"><%=rs.getString("f_p_date")%></div></td>
	<% if(tfs<=tpd) { %>
	<td><div align="center"><font size="4" color="#009900">Full Paid</font></div></td>
	<% } else { %>
	<td><div align="center"><font size="4" color="#FF0000">Pending</font></div></td>
	<% } %>
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
