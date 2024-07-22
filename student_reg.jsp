<jsp:include page="meta.jsp"></jsp:include>
 
<jsp:include page="sidebar.jsp"></jsp:include>


		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="forms">
					<!--<h2 class="title1">Admin/Owner Details/</h2> -->
					<div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
						<div class="form-title">
							<h4>Student Registration </h4>
						</div>
						<div class="form-body">

<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="student_reg_code.jsp">

    
   <div class="form-group">
    <label>Semester</label>
      <td><select class="validate[required] form-control" name="st_sem" id="st_sem">
	  <option value="">-- Select --</option>
	  <option>1st Sem</option><option>2nd Sem</option><option>3rd Sem</option><option>4th Sem</option><option>5th Sem</option><option>6th Sem</option>
	  </select>
	  </td>
	  </div>
   
   <div class="form-group">
    <label>Register No</label>
      <td><input class="validate[required] form-control"name="st_regno" type="text" id="st_regno"></td>
	  </div>
    
	<div class="form-group">
    <label>First Name</label>
      <td><input class="validate[required,custom[onlyLetter]] form-control"name="st_fname" type="text" id="st_fname"></td>
    </div>
	
   <div class="form-group">
    <label>Last Name</label>
      <td><input class="validate[required,custom[onlyLetter]] form-control"name="st_lname" type="text" id="st_lname"></td>
     </div>
	 
	<div class="form-group">
    <label>Date Of Birth</label>
	<!-- </br>
      <div style="float:left "><img src="student/calender/cal.gif" align="right" onMouseOver="fnInitCalendar(this,'st_dob','style=calendar.css,expiry=false,instance=single,close=true')"></div> -->
	  <input class="validate[required,custom[date]] form-control"  name="st_dob" max="2005-12-31" min="1991-01-01" type="date" id="st_dob">
	  </div>
	  
	 <div class="form-group">
    <label>Contact</label>
      <td><input class="validate[required,custom[mobile]] form-control"name="st_content" type="text" id="st_content"></td>
     </div>
	 
	<div class="form-group">
    <label>E-mail</label>
      <td><input class="validate[required,custom[email]] form-control"name="st_email" type="text" id="st_email"></td>
	   </div>
	   
     <div class="form-group">
    <label>Address</label>
      <td><textarea class="validate[required,custom[onlyLetter]] form-control"name="st_address" id="st_address"></textarea></td>
    </div>
	
      <td height="31" colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn btn-primary"value="Submit">
        <input type="reset" name="Reset"  class="btn btn-active"value="Reset">
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

