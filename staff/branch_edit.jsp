<jsp:include page="meta.jsp"></jsp:include>

<jsp:include page="sidebar.jsp"></jsp:include>

<jsp:include page="header.jsp"></jsp:include>

		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="forms">
					<!--<h2 class="title1">Admin/Owner Details/</h2> -->
					<div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
						<div class="form-title">
							<h4>Branch Details </h4>
						</div>
						<div class="form-body">

<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from branch_details where b_id='"+a+"'");
rs.next();
%>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="branch_update.jsp">
<input name="id" type="hidden" value="<%=a%>">
 <div class="form-group">
    <label>Branch Name</label>
      <input class="validate[required,custom[onlyLetter]] form-control" name="b_name" type="text" id="b_name" value="<%=rs.getString("b_name")%>">
	  </div>
   
   <div class="form-group">
    <label>Description</label>
      <textarea class="validate[required] form-control" name="b_description" id="b_description"><%=rs.getString("b_description")%></textarea>
	  </div>
    
	<div class="form-group">
    <label>HOD</label>
      <input class="validate[required,custom[onlyLetter]] form-control" name="b_hod" type="text" id="b_hod" value="<%=rs.getString("b_hod")%>">
	  </div>
    
	 <div class="form-group">
    <label>Fees</label>
      <input class="validate[required,custom[onlyNumber]] form-control" maxlength="5" name="b_fees" type="text" id="b_fees" value="<%=rs.getString("b_fees")%>">
	  </div>
	  
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary" value="Update">
        <input type="reset" name="Reset"  class="btn btn-active" value="Rset">
      </div>
  </table>
</form>
<!-- Content End -->
						   
						   </div>
					</div>
					
					</div>
					
						</div>
					</div>
				</div>
			</div>
		</div>
		

<jsp:include page="footer.jsp"></jsp:include>

<jsp:include page="xscripts.jsp"></jsp:include>


