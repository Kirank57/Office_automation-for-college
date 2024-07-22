<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("b_id");
String b=request.getParameter("s_fname");
String c=request.getParameter("s_lname");
String d=request.getParameter("s_contact");
String e=request.getParameter("s_email");
String f=request.getParameter("s_qualification");
String g=request.getParameter("s_designation");
String h=request.getParameter("s_address");
//String i=request.getParameter("s_photo");
String j=request.getParameter("s_salary");
int z=s.stm.executeUpdate("insert into staff_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','none','"+j+"')");
%>
<script>
alert("Click ok to upload photo");
document.location="staff_uploaded_photo.jsp";
</script>