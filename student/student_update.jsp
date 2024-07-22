<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("id");
String b=request.getParameter("st_regno");
String c=request.getParameter("st_fname");
String d=request.getParameter("st_lname");
String e=request.getParameter("st_dob");
String f=request.getParameter("st_content");
//String g=request.getParameter("st_email");
String h=request.getParameter("st_address");

int z=s.stm.executeUpdate("update student_details set st_regno='"+b+"',st_fname='"+c+"',st_lname='"+d+"',st_dob='"+e+"',st_content='"+f+"',st_address='"+h+"' where st_id='"+a+"'");
%>
<script>
alert("Profile Updated");
document.location="my_profile.jsp";
</script>