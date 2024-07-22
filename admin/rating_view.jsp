<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null)
{
%>
<jsp:include page="meta.jsp"></jsp:include>

<jsp:include page="sidebar.jsp"></jsp:include>

<jsp:include page="header.jsp"></jsp:include>

  <%@page import="java.sql.*"%>
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>

		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="tables">
					<!--<h2 class="title1">Tables</h2> -->
		               <div class="bs-example widget-shadow" data-example-id="hoverable-table"> 
						<h4>Rating Details <!--| <a href="rating_form.jsp" class="btn btn-success">Add new</a> --></h4>
						
						<div style="width:80%">
						<form action="rating_view_staff.jsp" method="post">
						<label>Select Staff</label>
						<table>
						<tr><td width="250">
						<select required class="form-control" name="sid">
						<option value="">-- Select --</option>
						<%
						ResultSet rs1=s.stm.executeQuery("select * from staff_details");
						while(rs1.next())
						{
						%>
						<option value="<%=rs1.getInt("s_id")%>"><%=rs1.getString("s_fname")%>&nbsp;<%=rs1.getString("s_lname")%></option>
						<% } %>
						</select>
						</td>
						<td>
						<input type="submit" class="btn btn-primary"/>
						</td>
						</tr>
						</table>
						</form>
						</div>
						
						<div style="overflow-x:auto;">
	<table class="table table-hover" width="100%"> 
	<thead>
  <tr>
    <td><div align="center"><strong>Sr.No</strong></div></td>
    <td><div align="center"><strong>Student</strong></div></td>
    <td><div align="center"><strong>Staff</strong></div></td>
    <td><div align="center"><strong>Teaching</strong></div></td>
    <td><div align="center"><strong>Extra Activity</strong></div></td>
    <td><div align="center"><strong>Performance</strong></div></td>
   <!-- <td><div align="center"><strong>Action</strong></div></td> -->
	</thead>
  </tr>

  <%
  int s1=0;
  ResultSet rs=s.stm.executeQuery("select * from rating_details rd,staff_details sd,student_details std where rd.s_id=sd.s_id and rd.st_id=std.st_id");
  while(rs.next())
  {
  s1=s1+1;
  int rid=rs.getInt("r_id");
  String tc=rs.getString("teaching");          int t=Integer.parseInt(tc); 
  String ea=rs.getString("extra_activity");    int e=Integer.parseInt(ea);
  String pf=rs.getString("performances");      int p=Integer.parseInt(pf);
  %>
  <thead>
    <tr>
    <td><div align="center"><%=s1%></div></td>
    <td><div align="center"><%=rs.getString("st_fname")+" "+rs.getString("st_lname")%></div></td>
    <td><div align="center"><%=rs.getString("s_fname")+" "+rs.getString("s_lname")%></div></td>
    
	<% if(t==1) { %>
	<td><div align="center"><img src="../wfs_temp/images/star.png" width="30px"/></div></td>
	<% } else if(t==2) { %>
    <td><div align="center"><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/></div></td>
	<% } else if(t==3) { %>
    <td><div align="center"><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/></div></td>
	<% } else if(t==4) { %>
    <td><div align="center"><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/></div></td>
	<% } else if(t==5) { %>
    <td><div align="center"><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/></div></td>
    <% } %>
	
	<% if(e==1) { %>
	<td><div align="center"><img src="../wfs_temp/images/star.png" width="30px"/></div></td>
	<% } else if(e==2) { %>
    <td><div align="center"><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/></div></td>
	<% } else if(e==3) { %>
    <td><div align="center"><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/></div></td>
	<% } else if(e==4) { %>
    <td><div align="center"><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/></div></td>
	<% } else if(e==5) { %>
    <td><div align="center"><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/></div></td>
    <% } %>
	
	
	<% if(p==1) { %>
	<td><div align="center"><img src="../wfs_temp/images/star.png" width="30px"/></div></td>
	<% } else if(p==2) { %>
    <td><div align="center"><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/></div></td>
	<% } else if(p==3) { %>
    <td><div align="center"><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/></div></td>
	<% } else if(p==4) { %>
    <td><div align="center"><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/></div></td>
	<% } else if(p==5) { %>
    <td><div align="center"><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/><img src="../wfs_temp/images/star.png" width="30px"/></div></td>
    <% } %>
	

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
