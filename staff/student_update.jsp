<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("b_id");
String b=request.getParameter("st_regno");
String c=request.getParameter("st_fname");
String d=request.getParameter("st_lname");
String e=request.getParameter("st_dob");
String f=request.getParameter("st_content");
String g=request.getParameter("st_email");
String h=request.getParameter("st_address");
String i=request.getParameter("st_photo");
String j=request.getParameter("id");
int z=s.stm.executeUpdate("update student_details set b_id='"+a+"',st_regno='"+b+"',st_fname='"+c+"',st_lname='"+d+"',st_dob='"+e+"',st_content='"+f+"',st_email='"+g+"',st_address='"+h+"',st_photo='"+i+"' where st_id='"+j+"'");
%>
<script>
alert("values are updated");
document.location="student_view.jsp";
</script>