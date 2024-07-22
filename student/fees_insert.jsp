<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("st_id");
String b=request.getParameter("sem");
String c=request.getParameter("f_total");
String d=request.getParameter("f_paid");
String e=request.getParameter("f_p_date");
int z=s.stm.executeUpdate("insert into fees_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
%>
<script>
alert("values are inserted");
document.location="fees_view.jsp";
</script>