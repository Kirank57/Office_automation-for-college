<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("st_id");
String b=request.getParameter("sem");
String c=request.getParameter("m_date");
String d=request.getParameter("m_status");
String e=request.getParameter("id");
int z=s.stm.executeUpdate("update markscard_details set st_id='"+a+"',sem='"+b+"',m_date='"+c+"',m_status='"+d+"' where m_id='"+e+"'");
%>
<script>
alert("values are updated");
document.location="markscard_view.jsp";
</script>		