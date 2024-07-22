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
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from quary_details where q_id='"+a+"'");
rs.next();
%>
<form name="form1" method="post" action="quary_update.jsp">
<input name="id" type="hidden" value="<%=a%>">
      <div class="form-group">
    <label>Quary From</label>
      <input class="validate[required,custom[onlyLetter]] form-control"name="q_from" type="text" id="q_from" value="<%=rs.getString("q_from")%>">
   </div>
   
      <div class="form-group">
    <label>Quary TO</label>
      <input class="validate[required,custom[onlyLetter]] form-control"name="q_to" type="text" id="q_to" value="<%=rs.getString("q_to")%>">
	  </div>
   
    <div class="form-group">
    <label>Quary </label>
      <textarea class="validate[required] form-control"name="quary" id="quary"><%=rs.getString("quary")%></textarea>
	  </div>
   
   <div class="form-group">
    <label>Quary Uploaded Date</label>
     <input class="validate[required,custom[date]] form-control"name="uploaded_date" type="text" id="uploaded_date" value="<%=rs.getString("uploaded_date")%>">
	 </div>
   
    <div class="form-group">
    <label>Answer</label>
      <textarea class="validate[required] form-control"name="ans" id="ans"><%=rs.getString("ans")%></textarea>
	  </div>

  <div class="form-group">
    <label>Quary Uploaded Date</label>
     <input class="validate[required,custom[date]] form-control"name="uploaded_ans_date" type="text" id="uploaded_ans_date" value="<%=rs.getString("uploaded_ans_date")%>">
	 </div>
 
      <td height="31" colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary"value="Update">
        <input type="reset" name="Reset" class="btn btn-active"value="Reset">
  </table>
</form>
