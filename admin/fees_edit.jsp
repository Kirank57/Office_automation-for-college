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
							<h4>Fees Details | <a href="fees_view.jsp">Back</a></h4>
						</div>
						<div class="form-body">


<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("id");
String b=request.getParameter("bl");
ResultSet rs=s.stm.executeQuery("select * from fees_details where f_id='"+a+"'");
rs.next();
%>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="fees_update.jsp">
<input name="id" type="hidden" value="<%=a%>">
<input name="bl" type="hidden" value="<%=b%>">

	  <div class="form-group">
    <label>Total Fees</label>
        <input class="validate[required,custom[onlyNumber]] form-control" readonly="" maxlength="5" name="f_total" type="text" id="f_total" value="<%=rs.getString("f_total")%>">
      </div>
	  
	  <div class="form-group">
    <label>Paid Fees</label>
      <input class="validate[required,custom[onlyNumber]] form-control" readonly="" maxlength="5" name="f_paid" type="text" id="f_paid" value="<%=rs.getString("f_paid")%>">
      <div align="center"></div>
	  
	  <div class="form-group">
    <label>Pay Remaining Fees</label>
      <input class="validate[required,custom[onlyNumber]] form-control" maxlength="5" name="f_pay" type="text" id="f_pay" value="<%=b%>">
      <div align="center"></div>
	  
		<div class="form-group">
    <label> Fees Paid Date</label>
        <input class="validate[required,custom[date]] form-control" name="f_p_date" readonly="" type="text" id="f_p_date" value="<%=rs.getString("f_p_date")%>">
      </div>
	  
      <td colspan="2"><div align="center">
        <input type="submit" class="btn btn-success" name="Submit" value="Pay">
    
      </div></td>
    </tr>
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

