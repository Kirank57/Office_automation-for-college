<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String b=request.getParameter("s_fname");
String c=request.getParameter("s_lname");
String d=request.getParameter("s_contact");
String e=request.getParameter("s_email");
String f=request.getParameter("s_qualification");
String g=request.getParameter("s_designation");
String h=request.getParameter("s_address");
//String i=request.getParameter("s_photo");
//String j=request.getParameter("s_salary");
String ans=d.substring(d.length() - 4);

ResultSet rs=s.stm.executeQuery("select * from staff_details where s_email='"+e+"'");
if(rs.next())
{
	out.println("<script>alert('Email-ID already Used or Exists');history.back();</script>");
}
else
{
  ResultSet rs1=s.stm.executeQuery("select * from staff_details where s_contact='"+d+"'");
  if(rs1.next())
  {
	out.println("<script>alert('Mobile NO. already Used or Exists');history.back();</script>");
  }
  else
  {
   int z=s.stm.executeUpdate("insert into staff_details values(null,'"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','user.png','-')");
   int zz=s.stm.executeUpdate("insert into login values('"+e+"','"+d+"','staff','Enter Last 4 Digits of Reg. Mobile No.','"+ans+"','active')");
%>
	<script>
	alert("You've Registed Successfully");
	alert("Your UserName:<%=e%> and Password: Reg. Mobile No.");
	document.location="login.jsp";
	</script>
<%
  }
}
%>
