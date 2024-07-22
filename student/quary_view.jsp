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
						<h4>Quary Details| <a href="quary_form.jsp" class="btn btn-success">Ask New</a></h4>
						<div style="overflow-x:auto;">
	<table class="table table-hover" width="100%"> 
	<thead>
  <tr>
    <td><div align="center"><strong>Sr.No</strong></div></td>
    <td><div align="center"><strong>From</strong></div></td>
    <td><div align="center"><strong>To</strong></div></td>
    <td><div align="center"><strong>Quary</strong></div></td>
    <td><div align="center"><strong>Asked Date </strong></div></td>
    <td><div align="center"><strong>Answer</strong></div></td>
    <td><div align="center"><strong>Answered Date</strong></div></td>
    <td><div align="center"><strong>Action</strong></div></td>
  </thead>
  </tr>
   <%@page import="java.sql.*"%>
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  int s1=0;
  String un=session.getAttribute("uname").toString();
  ResultSet rs=s.stm.executeQuery("select * from quary_details qd,student_details sd,staff_details stf where qd.q_from=sd.st_id and qd.q_to=stf.s_id and sd.st_email='"+un+"'");
  while(rs.next())
  {
  s1=s1+1;
  int qid=rs.getInt("q_id");
  %>
  <tr>
    <td><div align="center"><%=s1%></div></td>
    <td><div align="center"><%=rs.getString("st_fname")%>&nbsp;<%=rs.getString("st_lname")%></div></td>
    <td><div align="center"><%=rs.getString("s_fname")%>&nbsp;<%=rs.getString("s_lname")%></div></td>
    <td><div align="center"><%=rs.getString("quary")%></div></td>
    <td><div align="center"><%=rs.getString("uploaded_date")%></div></td>
    <td><div align="center"><%=rs.getString("ans")%></div></td>
    <td><div align="center"><%=rs.getString("uploaded_ans_date")%></div></td>
    <td><div align="center"><!--<a class="btn btn-primary" href="quary_edit.jsp?id=<%=qid%>"><i class="fa fa-edit"></i></a>  | --> <a class="btn btn-danger"onClick="return confirm('Are you sure?')" href="quary_delete.jsp?id=<%=qid%>"><i class="fa fa-trash"></i></a>
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

