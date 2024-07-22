
<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button title="Show/Hide Menus" id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				
				
				<div class="profile_details_left"><!--notifications of menu start -->
					<ul class="nofitications-dropdown">
						<!--<li class="dropdown head-dpdn">
							<a href="read.jsp" class="dropdown-toggle"><i class="fa fa-envelope"></i><span class="badge">0</span></a>
							
						</li> -->
						
					<div class="clearfix"> </div>
				</div>
				
				
				<!-- <li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">1</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 1 new notification</h3>
									</div>
								</li>
								
								<li><a href="#">
									<div class="user_img"><img src="../wfs_temp/images/4.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet</p>
									<p><span>1 hour ago</span></p>
									</div>
								  <div class="clearfix"></div>	
								 </a></li>
								 
								 
								 <li>
									<div class="notification_bottom">
										<a href="#">See all notifications</a>
									</div> 
								</li>
								
							</ul>
						</li>	 -->
				
				<!--notification menu end -->
				
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">
				
				
				<!--search-box-->
				<!--<div class="search-box">
					<form class="input">
						<input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31" />
						<label class="input__label" for="input-31">
							<svg class="graphic" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
								<path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
							</svg>
						</label>
					</form>
				</div> -->
				<!--//end-search-box-->
				<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
				<%
				String un=session.getAttribute("uname").toString();
				ResultSet rs=s.stm.executeQuery("select * from student_details sd,login l where sd.st_email=l.username and l.username='"+un+"'");
				rs.next();
				%>
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="../uploads/<%=rs.getString("st_photo")%>" width="50" height="50" alt=""> </span> 
									<div class="user-name">
										<p>Welcome, <%=rs.getString("st_fname")%>&nbsp;<%=rs.getString("st_lname")%></p>
										<span>Student Panel</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="my_profile.jsp"><i class="fa fa-user"></i> My Profile</a> </li> 
								<li> <a href="changepass_form.jsp"><i class="fa fa-lock"></i> Change Password</a> </li> 
								<li>  <a onClick="return confirm('Are you sure?')" href="../logout.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>				
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->