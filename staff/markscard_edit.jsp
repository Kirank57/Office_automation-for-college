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
							<h4>Marks Card Details </h4>
						</div>
						<div class="form-body">


<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from markscard_details where m_id='"+a+"'");
rs.next();
%>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="markscard_update.jsp">
<input name="id" type="hidden" value="<%=a%>">
 <div class="form-group">
    <label>Sem</label>
      <input class="validate[required,custom[onlyNumber]] form-control"name="sem" type="text" id="sem" value="<%=rs.getString("sem")%>">
	  </div>
    
        <div class="form-group">
    <label>Student ID</label>
	   <select class="validate[required] form-control" name="st_id" id="st_id">
      <option value="">-- Select  --</option>
	  <jsp:useBean id="s1" class="office.automation"/>
<jsp:getProperty name="s1" property="conn"/>
      <%
			ResultSet rs1=s1.stm.executeQuery("select * from student_details");
			while(rs1.next())
			{
		%>
      <option value="<%=rs1.getInt("st_id")%>"><%=rs1.getString("st_fname")%></option>
      <% } %>
  </select>      
      </div>
	  
	    <div class="form-group">
    <label>Marks Card Date</label>
      <input class="validate[required] form-control"name="m_date" type="text" id="m_date" value="<%=rs.getString("m_date")%>">
   </div>
   
   <div class="form-group">
    <label>Markscard Status</label>
      <td><input class="validate[required,custom[onlyLetter]] form-control"name="m_status" type="text" id="m_status" value="<%=rs.getString("m_status")%>"></td>
   </div>
   
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary" value="Update">
        <input type="submit" name="Submit" class="btn btn-active"value="Submit">
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

