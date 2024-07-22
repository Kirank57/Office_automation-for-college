<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("title");
String b=request.getParameter("description");
String c=request.getParameter("uploaded_date");
String d=request.getParameter("uploaded_time");
String e=request.getParameter("uploaded_by");
String f=request.getParameter("status");
String g=request.getParameter("id");
int z=s.stm.executeUpdate("update completed_syllabus set title='"+a+"',description='"+b+"',uploaded_date='"+c+"',uploaded_time='"+d+"',uploaded_by='"+e+"',status='"+f+"' where cs_id='"+g+"'");
%>
<script>
alert("values are updated");
document.location="com_sym_view.jsp";
</script>