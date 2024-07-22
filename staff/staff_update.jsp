<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("id");
String b=request.getParameter("s_fname");
String c=request.getParameter("s_lname");
String d=request.getParameter("s_contact");
String e=request.getParameter("s_email");
String f=request.getParameter("s_qualification");
String g=request.getParameter("s_designation");
String h=request.getParameter("s_address");
//String i=request.getParameter("s_photo");
String j=request.getParameter("s_salary");

int z=s.stm.executeUpdate("Update staff_details set s_fname='"+b+"',s_lname='"+c+"',s_contact='"+d+"',s_qualification='"+f+"',s_designation='"+g+"',s_address='"+h+"',s_salary='"+j+"' where s_id='"+a+"'");
%>
<script>
alert("Profile Updated");
document.location="my_profile.jsp";
</script>