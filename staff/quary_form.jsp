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
							<h4>Quary Details</h4>
						</div>
						<div class="form-body">

<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="quary_insert.jsp">
  
  <div class="form-group">
    <label>Quary From</label>
        <input class="validate[required,custom[onlyLetter]] form-control"name="q_from" type="text" id="q_from">
		
		<div class="form-group">
    <label>Quary To</label>
      <textarea class="validate[required] form-control" name="quary" id="quary"></textarea>
	  </div>
    
	<div class="form-group">
    <label>Quary</label>
      <textarea class="validate[required] form-control" name="quary" id="quary"></textarea>
	  </div>
	  
   <div class="form-group">
    <label>Quary Uploaded Date</label>
	 <%@page import="java.util.Date"%>
	<%
	Date d1=new Date();
	int dd,mm,yy;
	yy=d1.getYear()+1900; mm=d1.getMonth()+1; dd=d1.getDate();
	String dt=yy+"-"+mm+"-"+dd;
	%>
	<input class="validate[required,custom[date]] form-control" value="<%=dt%>"readonly="" name="uploaded_date" type="text" id="uploaded_date">
	 
	 <div class="form-group">
    <label>Answer</label>
      <textarea class="validate[required] form-control" name="ans" id="ans"></textarea>
	  </div>
    
	<div class="form-group">
    <label>Quary Uploaded Date</label>
	   <%@page import="java.util.Date"%>
	<%
	Date d2=new Date();
	int dd1,mm1,yy1;
	  yy1=d2.getYear()+1900; mm1=d2.getMonth()+1; dd1=d2.getDate();
	String dt1=yy1+"-"+mm1+"-"+dd1;
	%>	  
	  <input class="validate[required,custom[date]] form-control" value="<%=dt1%>"readonly="" name="uploaded_ans_date" type="text" id="uploaded_ans_date"> 
	  </div>
	  
      <td height="31" colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary" value="Submit">
        <input type="reset" name="Reset" class="btn btn-active" value="Reset">
      </div>
  </table>
</form>
