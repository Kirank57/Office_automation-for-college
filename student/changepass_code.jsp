<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String un=session.getAttribute("uname").toString();
String opass=request.getParameter("op");
String npass=request.getParameter("np");
String cpass=request.getParameter("cp");

ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and password='"+opass+"'");
if(rs.next())
{
   if(npass.equals(cpass))
   {
      int z=s.stm.executeUpdate("update login set password='"+npass+"' where username='"+un+"'");
	%>
	<script>alert("Password Changed Successfully");document.location="home.jsp";</script>
	<%
   }
   else
   {
   %>
   <script>alert("Please Check confirm password");history.back();</script>
   <%
   }
}
else
{
%>
<script>
alert("Invalid Old Password");
history.back();
</script>
<%
}
%>
