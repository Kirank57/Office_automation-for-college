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
				<div class="forms">
					<!--<h2 class="title1">Admin/Owner Details/</h2> -->
					<div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
						<div class="form-title">
							<h4>Marks Card Details </h4>
						</div>
						<div class="form-body">

<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz"name="form1" method="post" action="markscard_insert.jsp">
  
   <div class="form-group">
    <label>Sem</label>
      <input class="validate[required,custom[onlyNumber] form-control"name="sem" type="text" id="sem">
   </div>
   
        <div class="form-group">
    <label>Student ID</label>
	       <select class="validate[required] form-control" name="st_id" id="st_id">
            <option value="">-- Select  --</option>
            <%@page import="java.sql.*"%>
            <%@page import="office.automation"%>
            <jsp:useBean id="s" class="office.automation"/>
            
            <jsp:getProperty name="s" property="conn"/>        
            <%
			ResultSet rs=s.stm.executeQuery("select * from student_details");
			while(rs.next())
			{
			%>
            <option value="<%=rs.getInt("st_id")%>"><%=rs.getString("st_fname")%></option>
            <% } %>
           </select> 
		   </div>     
       
	    <div class="form-group">
    <label>Marks Card Date</label>
	</br>
		  <div style="float:left "><img src="calender/cal.gif" align="right" onMouseOver="fnInitCalendar(this,'m_date','style=calendar.css,expiry=false,instance=single,close=true')"><div></div>
     <input class="validate[required] form-control" readonly="" name="m_date" type="text" id="m_date">
	 </div>
	 
	  <div class="form-group">
    <label>Markscard Status</label>
      <input class="validate[required,custom[onlyLetter]] form-control"name="m_status" type="text" id="m_status">
    </div>
	
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary"value="Submit">
        <input type="reset" name="Reset" class="btn btn-active" value="Reset">
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
<%
}
else
{
out.println("<script>alert('Your Session Expired. Please Re-Login');document.location='../index.jsp';</script>");
}
%>


