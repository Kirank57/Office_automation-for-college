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
//String i=request.getParameter("st_photo");
int z=s.stm.executeUpdate("insert into student_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','none')");
%>
<script>
alert("Click ok to uplode photo");
document.location="student_uploaded_photo.jsp";
</script>