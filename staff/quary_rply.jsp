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


<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("qid");
ResultSet rs=s.stm.executeQuery("select * from quary_details where q_id='"+a+"'");
rs.next();
%>
<form name="form1" method="post" action="quary_ans.jsp">
<input name="id" type="hidden" value="<%=a%>">
  
    <div class="form-group">
    <label>Quary </label>
      <textarea class="validate[required] form-control" readonly="readonly" name="quary" id="quary"><%=rs.getString("quary")%></textarea>
	  </div>
   
    <div class="form-group">
    <label>Answer</label>
      <textarea class="validate[required] form-control"name="ans" id="ans"></textarea>
	  </div>
 <%@page import="java.util.Date"%>
	<%
	Date d1=new Date();
	int dd,mm,yy;
	yy=d1.getYear()+1900; mm=d1.getMonth()+1; dd=d1.getDate();
	String dt=yy+"-"+mm+"-"+dd;
	%>
  <div class="form-group">
    <label>Quary Uploaded Date</label>
      <input class="validate[required,custom[date]] form-control" name="uploaded_ans_date" readonly="" type="text" id="uploaded_ans_date" value="<%=dt%>">
	  </div>
    
      <td height="31" colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary"value="Answer">
        <input type="reset" name="Reset" class="btn btn-active"value="Reset">
      </div>
  </table>
</form>
