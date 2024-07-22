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
						<h4>Assign Subject<!--| <a href="assign_sub_form.jsp" class="btn btn-success">Add new</a> --></h4>
						<div style="overflow-x:auto;">
	<table class="table table-hover" width="100%"> 
	<thead>
	<tr>
    <td width="52" height="48"><div align="center">SR No </div></td>
    <td width="115"><div align="center">Subject ID </div></td>
    <td width="115"><div align="center">Staff ID </div></td>
<!--    <td width="157"><div align="center">Action</div></td> -->
	</thead>
  </tr>
  <%@page import="java.sql.*"%>
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  int s1=0;
  String un=session.getAttribute("uname").toString();
  ResultSet rs=s.stm.executeQuery("select * from assign_sub_details ab,staff_details sd,subject_details sb where ab.s_id=sd.s_id and ab.sub_id=sb.sub_id and sd.s_email='"+un+"'");
  while(rs.next())
  {
  s1=s1+1;
  int asid=rs.getInt("as_id");
  %>
  <tbody>
  <tr>
    <td height="48"><div align="center"><%=s1%></div></td>
    <td><div align="center"><%=rs.getString("sub_name")%></div></td>
    <td><div align="center"><%=rs.getString("s_fname")%>&nbsp;<%=rs.getString("s_lname")%></div></td>
<!--    <td><div align="center"><a class="btn btn-primary" href="assign_sub_edit.jsp?id=<%=asid%>"><i class="fa fa-edit"></i></a> | <a class="btn btn-danger" onClick="return confirm('Are you sure ?')" href="assign_sub_delete.jsp?id=<%=asid%>"><i class="fa fa-trash"></i></a>
        </div> -->
    </div></td>
  <%
  }
  %>
  </tr>
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
