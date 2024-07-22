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
						<h4>Marks Card Details | Sort Sem / Batch Wise<!--  <a href="student_form.jsp" class="btn btn-success">Add new</a> --></h4>
						<div style="width:50%">
						<form action="markscard_view_sem.jsp" method="post">
						<!--<label>Select Sem to Sort</label> -->
						<table>
						<tr>
						<td width="140">
						<select required class="form-control" name="sm">
						<option value="">-- Select --</option><option>1st Sem</option><option>2nd Sem</option><option>3rd Sem</option><option>4th Sem</option><option>5th Sem</option><option>6th Sem</option>
						</select>
						</td>
						<td>
						<input type="submit" class="btn btn-primary"/>
						</td>
						</form>
						
						<td width="250">
						<form action="markscard_view_br.jsp" method="post">
						<select required class="form-control" name="brch">
						<option value="">-- Select --</option>
						<%
						ResultSet rs1=s.stm.executeQuery("select * from branch_details");
						while(rs1.next())
						{
						%>
						<option value="<%=rs1.getInt("b_id")%>"><%=rs1.getString("b_name")%></option>
						<% } %>
						</select>
						</td>
						<td>
						<input type="submit" class="btn btn-info"/>
						</td>
						</form>
						</tr>
						</table>
						</div>
						
						<div style="overflow-x:auto;">
	<table class="table table-hover" width="100%"> 
	<thead>

  <tr>
    <td><div align="center"><strong>Sr.No</strong></div></td>
    <td><div align="center"><strong>Sem</strong></div></td>
	<td><div align="center"><strong>Barnch</strong></div></td>
    <td><div align="center"><strong>Student</strong></div></td>
    <td><div align="center"><strong>Took Date</strong></div></td>
    <td><div align="center"><strong>Markscard Status</strong></div></td>
    <td><div align="center"><strong>Action</strong></div></td>
	</thead>
  </tr>

  <%
  int s1=0;
  ResultSet rs=s.stm.executeQuery("select * from markscard_details md,student_details std,branch_details bd where bd.b_id=std.b_id and md.st_reg=std.st_regno");
  while(rs.next())
  {
  s1=s1+1;
  int mid=rs.getInt("m_id");
  String st=rs.getString("m_status");
  %>
  </tbody>
  <tr>
    <td><div align="center"><%=s1%></div></td>
    <td><div align="center"><%=rs.getString("sem")%></div></td>
	<td><div align="center"><%=rs.getString("b_name")%></div></td>
    <td><div align="center"><%=rs.getString("st_fname")%>&nbsp;<%=rs.getString("st_lname")%></div></td>
    <td><div align="center"><%=rs.getString("m_date")%></div></td>
	<% if(st.equals("available")) { %>
    <td><div align="center"><font size="4" color="#009900">Available</font></div></td>
	<td><div align="center"><a onclick="return confirm('Are you sure?')" href="give_mcard.jsp?id=<%=mid%>"><button class="btn btn-info">Give</button></a></div></td>
	<% } else { %>
	<td><div align="center"><font size="4" color="#FF0000">Not Available</font></div></td>
	<td><div align="center"><font size="4" color="#990000">-</font></div></td>
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
