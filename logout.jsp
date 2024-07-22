<title>Logging out...</title> 
<%
session.removeAttribute("uname");
session.invalidate(); 
%>
<script>
alert("You've Loggedout Successfully");
document.location="login.jsp";
</script>