 
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
              <li class="header">Student Panel</li>
              
			  <li class="treeview">
                <a href="home.jsp">
                <i class="fa fa-home"></i> <span>Home</span>
                </a>
              </li>
			
			
			<li class="treeview">
                <a href="my_profile.jsp">
                <i class="fa fa-user"></i>
                <span>My Profile</span>
                </a>
              </li>
			  
			 <!-- <li class="treeview">
                <a href="assign_sub_view.jsp">
                <i class="fa fa-edit"></i>
                <span>Assign Subject</span>
                </a>
              </li> -->
			  
			   <!--<li class="treeview">
                <a href="branch_view.jsp">
                <i class="fa fa-edit"></i>
                <span>Branch Details</span>
                </a>
              </li> -->
			  
			   <li class="treeview">
                <a href="com_sym_view.jsp">
                <i class="fa fa-file"></i>
                <span>Completed Syllabus</span>
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
                <span>Marks Card Details</span>
                </a>
              </li>
			            
  <%@page import="java.sql.*"%>
  <%@page import="office.automation"%>
  <jsp:useBean id="s" class="office.automation"/>
  <jsp:getProperty name="s" property="conn"/>
	<%
		String un=session.getAttribute("uname").toString();
		ResultSet rs=s.stm.executeQuery("select count(n.n_id) as tnt from notice_details n,student_details s where n.n_to=s.st_id and n.status='New' and s.st_email='"+un+"'");
		rs.next();
		int tn=rs.getInt("tnt");
	%>
			   <li class="treeview">
                <a href="read.jsp">
                <i class="fa fa-bell"></i>
                <span>Notice Details &nbsp;<label class="badge badge-primary"><%=tn%></label></span>
                </a>
              </li>
			  
			   <li class="treeview">
                <a href="quary_view.jsp">
                <i class="fa fa-question"></i>
                <span>Quary Details</span>
                </a>
              </li>
			  
			   <li class="treeview">
                <a href="rating_view.jsp">
                <i class="fa fa-star"></i>
                <span>Rating Details</span>
                </a>
              </li>
			  
			   <!--<li class="treeview">
                <a href="salary_view.jsp">
                <i class="fa fa-edit"></i>
                <span>Salary Details</span>
                </a>
              </li> -->
			  
			   <!--<li class="treeview">
                <a href="staff_view.jsp">
                <i class="fa fa-edit"></i>
                <span>Staff Details</span>
                </a>
              </li> -->
			  
			  <!-- <li class="treeview">
                <a href="student_view.jsp">
                <i class="fa fa-edit"></i>
                <span>Student Details</span>
                </a>
              </li> -->
			  
			   <!--<li class="treeview">
                <a href="subject_view.jsp">
                <i class="fa fa-edit"></i>
                <span>Subject Details</span>
                </a>
              </li> -->
			  
			   
			 
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
			  
          </div> <!--
		  <//.navbar-collapse -->
      </nav></aside> 
	</div> 
		<!--left-fixed -navigation-->
