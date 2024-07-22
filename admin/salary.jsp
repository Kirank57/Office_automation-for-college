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
							<h4>Salary Details | <a href="salary_form.jsp">Back</a></h4>
						</div>
						<div class="form-body">
						
<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/>  

<jsp:include page="val.jsp"></jsp:include>

  <%@page import="java.util.Date"%>
	<%
	Date d1=new Date();
	int dd,mm,yy;
	 yy=d1.getYear()+1900; mm=d1.getMonth()+1; dd=d1.getDate();
	String dt=yy+"-"+mm+"-"+dd;
	%>

<%
String id=request.getParameter("s_id");
ResultSet rs=s.stm.executeQuery("select s_salary as tsal from staff_details where s_id='"+id+"'");
rs.next();
String sal=rs.getString("tsal");
%>
<form id="WFS_Riz" name="form1" method="post" action="salary_insert.jsp">  
<input type="hidden" value="<%=id%>" name="sid"/> 
<input type="hidden" value="<%=mm%>" name="mnt"/> 
<input type="hidden" value="<%=yy%>" name="yr"/> 
	   <div class="form-group">
    <label>Salary Amount</label>
      <input class="validate[required,custom[onlyNumber]] form-control" value="<%=sal%>" readonly="" name="sal_amount" type="text" id="sal_amount">      
	   </div>
    
	<div class="form-group">
    <label>Salary Date</label>
	
	        <input class="validate[required,custom[date]] form-control" value="<%=dt%>"readonly="" name="sal_date" type="text" id="sal_date">        
     </div>
	<!-- 
	<div class="form-group">
    <label>Status</label>
     <input class="validate[required,custom[onlyLetter]] form-control"name="status" type="text" id="status"> 
	  </div> -->
    
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary" value="Pay">
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


