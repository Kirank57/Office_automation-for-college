<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("title");
String b=request.getParameter("description");
String c=request.getParameter("uploaded_date");
//String d=request.getParameter("uploaded_time");
String e=request.getParameter("uploaded_by");
String f=request.getParameter("status");
int z=s.stm.executeUpdate("insert into completed_syllabus values(null,'"+a+"','"+b+"','"+c+"','-','"+e+"','"+f+"')");
%>
<script>
alert("Successfully Added");
document.location="com_sym_view.jsp";
</script>