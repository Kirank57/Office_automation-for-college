<!-- Header Design Start -->
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
							<h4>Completed Syllabus </h4>
						</div>
						<div class="form-body">
<!-- Header Design End -->

<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from completed_syllabus where cs_id='"+a+"'");
rs.next();
%>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="com_sym_update.jsp">
<input name="id" type="hidden" value="<%=a%>">
<label>Title </label>
	 <div class="form-group">
    <input class="validate[required,custom[onlyLetter]] form-control"name="title" type="text" id="title" value="<%=rs.getString("title")%>">
   </div>
   
   <label>Description </label>
	 <div class="form-group">
      <td><textarea class="validate[required,custom[onlyLetter]] form-control"name="description" id="description"><%=rs.getString("description")%></textarea></td>
   </div>
   
      <label>Uploaded date  </label>
	<div class="form-group">
    <input class="validate[required] form-control"name="uploaded_date" type="text" id="uploaded_date" value="<%=rs.getString("uploaded_date")%>">
    </div>
	
	      <label>Uploaded time </label>
	  <div class="form-group">
      <input class="validate[required] form-control"name="uploaded_time" type="text" id="uploaded_time" value="<%=rs.getString("uploaded_time")%>">
    </div>
	
	<label>Uploaded by </label>
	<div class="form-group">
      <input class="validate[required,custom[onlyLetter]] form-control"name="uploaded_by" type="text" id="uploaded_by" value="<%=rs.getString("uploaded_by")%>">
   </div>
   
    <label>Status </label>
	<div class="form-group">
      <td><input class="validate[required,custom[onlyLetter]] form-control"name="status" type="text" id="status" value="<%=rs.getString("status")%>"></td>
   </div>
   
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary"value="Update">
        <input type="reset" name="Reset" class="btn btn-active"value="Reset">
      </div>
  </table>
</form>
<!-- Footer Design Start -->
						   
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
<!-- Footer Design End -->
