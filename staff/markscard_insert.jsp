<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("st_id");
String b=request.getParameter("sem");
String c=request.getParameter("m_date");
String d=request.getParameter("m_status");
int z=s.stm.executeUpdate("insert into markscard_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"')");
%>
<script>
alert("values are inserted");
document.location="markscard_view.jsp";
</script>		