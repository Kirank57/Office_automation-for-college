  	
<body class="cbp-spmenu-push">
	<div class="main-content">
	<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1"> 
		<!--left-fixed -navigation-->
		<aside class="sidebar-left"> 
      <nav class="navbar navbar-inverse"> 
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".collapse" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <h1><a class="navbar-brand" href="home.jsp"><span class="fa fa-graduation-cap"></span> Office<span class="dashboard_text">Automation</span></a></h1>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> 
            <ul class="sidebar-menu">
              <li class="header">Admin Panel</li>
              
			  <li class="treeview">
                <a href="home.jsp">
                <i class="fa fa-home"></i> <span>Home</span>
                </a>
              </li>
			  
					  
			   <li class="treeview">
                <a href="subject_view.jsp">
                <i class="fa fa-book"></i>
                <span>Subject Details</span>
                </a>
              </li>
			  
			  <li class="treeview">
                <a href="staff_view.jsp">
                <i class="fa fa-user"></i>
                <span>Staff Details</span>
                </a>
              </li>
			  
			    <li class="treeview">
                <a href="student_view.jsp">
                <i class="fa fa-users"></i>
                <span>Student Details</span>
                </a>
              </li> 
			  
			  
			<li class="treeview">
                <a href="assign_sub_view.jsp">
                <i class="fa fa-file"></i>
                <span>Assign Subject</span>
                </a>
              </li>
			  
			 
			  
					  
			  <li class="treeview">
                <a href="fees_view.jsp">
                <i class="fa fa-inr"></i>
                <span>Fees Details</span>
                </a>
              </li>
			  
			  <li class="treeview">
                <a href="markscard_view.jsp">
                <i class="fa fa-certificate"></i>
                <span>Marks Card Detatls</span>
                </a>
              </li>
			  
			  <li class="treeview">
                <a href="notice_view.jsp">
                <i class="fa fa-bullhorn"></i>
                <span>Notice Details</span>
                </a>
              </li> 
			  
			
			  
			  <li class="treeview">
                <a href="salary_view.jsp">
                <i class="fa fa-inr"></i>
                <span>Salary Details</span>
                </a>
              </li>
  <%@page import="java.sql.*"%>
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>
	<%
		ResultSet rs=s.stm.executeQuery("select count(r_id) as trt from rating_details");
		rs.next();
		int tr=rs.getInt("trt");
	%>	 
			   <li class="treeview">
                <a href="rating_view.jsp">
                <i class="fa fa-star"></i>
                <span>Ratings&nbsp;<label class="badge badge-primary"><%=tr%></label></span>
                </a>
              </li> 
			 
			 	<li class="treeview">
                <a href="changepass_form.jsp">
                <i class="fa fa-lock"></i>
                <span>Change Password</span>
                <!--<span class="label label-primary pull-right">new</span> -->
                </a>
              </li>
			  
			  <li class="treeview">
                <a onClick="return confirm('Are you sure?')" href="../logout.jsp">
                <i class="fa fa-sign-out"></i>
                <span>Logout</span>
                <!--<span class="label label-primary pull-right">new</span> -->
                </a>
              </li>		  
			  
          </div>
          <!-- /.</navbar-collapse -->
      </nav>
    </aside> 
	</div> 
		<!--left-fixed -navigation-->