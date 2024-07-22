    <%@page import="java.sql.*"%> 
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
  ResultSet rs1=s.stm.executeQuery("select count(st_id) as tst from student_details");
  rs1.next();
  int ts=rs1.getInt("tst");
  
  ResultSet rs2=s.stm.executeQuery("select count(s_id) as tsf from staff_details");
  rs2.next();
  int sf=rs2.getInt("tsf");
  %>
<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
			<div class="col_3">
        	
			<a href="student_view.jsp"><div class="col-md-3 widget widget1">        		<div class="r3_counter_box">                    <i class="pull-left fa fa-users icon-rounded"></i>                    <div class="stats">                      <h5><strong><%=ts%></strong></h5>                      <span>Total Students</span>                    </div>                </div>        	</div></a>
			
        	<a href="staff_view.jsp"><div class="col-md-3 widget widget1">        		<div class="r3_counter_box">                    <i class="pull-left fa fa-user user1 icon-rounded"></i>                    <div class="stats">                      <h5><strong><%=sf%></strong></h5>                      <span>Total Staff</span>                    </div>                </div>        	</div></a>
			
        	<a href="notice_view.jsp"><div class="col-md-3 widget widget1">        		<div class="r3_counter_box">                    <i class="pull-left fa fa-inbox user2 icon-rounded"></i>                    <div class="stats">                      <h5><strong></strong></h5>                      <span>Notice</span>                    </div>                </div>        	</div></a>
			
        	<!-- <div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-pie-chart dollar1 icon-rounded"></i>
                    <div class="stats">
                      <h5><strong>$450</strong></h5>
                      <span>Expenditure</span>
                    </div>
                </div>
        	 </div>
			 
        	<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-users dollar2 icon-rounded"></i>
                    <div class="stats">
                      <h5><strong>1450</strong></h5>
                      <span>Total Users</span>
                    </div>
                </div>
        	 </div> -->
			 
        	<div class="clearfix"> </div>
		</div>
		