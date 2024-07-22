<% 
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null)
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
							<h4>Fees Details </h4>
						</div>
						<div class="form-body">

<jsp:include page="val.jsp"></jsp:include>
               <%@page import="java.sql.*"%>
               <%@page import="office.automation"%>
               <jsp:useBean id="s" class="office.automation"/>
               <jsp:getProperty name="s" property="conn"/>  
			   
<form id="WFS_Riz" name="form1" method="post" action="fees_form.jsp">

<div class="form-group">
    <label>Branch</label>
              <select class="validate[required] form-control" name="brch" id="brch">
		       <option value="">-- Select  --</option>
						<%
						ResultSet rs1=s.stm.executeQuery("select * from branch_details");
						while(rs1.next())
						{
						%>
						<option value="<%=rs1.getInt("b_id")%>"><%=rs1.getString("b_name")%></option>
						<% } %>
              </select>  
			  </div>    
          
		  <div class="form-group">
    <label>Semester</label>
         <select required class="validate[required]  form-control" name="sm">
				<option value="">-- Select --</option>
				<option>1st Sem</option><option>2nd Sem</option><option>3rd Sem</option><option>4th Sem</option><option>5th Sem</option><option>6th Sem</option>
		</select>
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

