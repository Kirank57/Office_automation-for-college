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
							<h4>Notice Details</h4>
						</div>
						<div class="form-body">

<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from notice_details where n_id='"+a+"'");
rs.next();
%>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz"name="form1" method="post" action="notice_update.jsp">
<input name="id" type="hidden" value="<%=a%>">
</div>

<div class="form-group">
    <label> Notice To</label>
     <input class="validate[required] form-control" name="n_to" type="text" id="n_to" value="<%=rs.getString("n_to")%>">
	  </div>
  
   <div class="form-group">
    <label> Notice Uploaded Date</label>
      <input class="validate[required,custom[date]] form-control" name="n_date" type="text" id="n_date" value="<%=rs.getString("n_date")%>">
    </div>
	
	<div class="form-group">
    <label> Notice</label>	
     <input class="validate[required] form-control" name="notice" type="text" id="notice" value="<%=rs.getString("notice")%>">
    </div>
	
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary"value="Update">
        <input type="reset" name="Reset" class="btn btn-active"value="Reset">
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
