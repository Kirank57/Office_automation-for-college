<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String un=request.getParameter("uname");
String sq=request.getParameter("qstn");
String ans=request.getParameter("ans");
ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and s_qstn='"+sq+"' and s_ans='"+ans+"'");
if(rs.next())
{
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Forgot Password</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="lg_tmp/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lg_tmp/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lg_tmp/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lg_tmp/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="lg_tmp/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lg_tmp/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lg_tmp/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="lg_tmp/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lg_tmp/css/util.css">
	<link rel="stylesheet" type="text/css" href="lg_tmp/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
	
		<div class="container-login100" style="background-image:url(lg_tmp/images/lgbg.jpg) ">
			<div class="wrap-login100">
				<form class="login100-form validate-form p-l-55 p-r-55 p-t-178" method="post" action="login.jsp">
					<span class="login100-form-title">
						Forgot Password
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter username">
						<input class="input100" type="text" name="uname" value="<%=un%>" readonly="" placeholder="Username">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter username">
						<input class="input100" type="text" name="qstn" value="<%=rs.getString("password")%>" readonly="" placeholder="Question">
						<span class="focus-input100"></span>
					</div>
				

					
					

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Back to Login
						</button>
					</div>

					<div class="flex-col-c p-t-170 p-b-40">
						<span class="txt1 p-b-9">
							Note: Please Change your Password after login
						</span>

						
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
<!--===============================================================================================-->
	<script src="lg_tmp/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="lg_tmp/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="lg_tmp/vendor/bootstrap/js/popper.js"></script>
	<script src="lg_tmp/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="lg_tmp/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="lg_tmp/vendor/daterangepicker/moment.min.js"></script>
	<script src="lg_tmp/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="lg_tmp/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="lg_tmp/js/main.js"></script>
<%
}
else
{
%>
<script>alert("Invalid Answer");history.back();</script>
<%
}
%>
</body>
</html>
