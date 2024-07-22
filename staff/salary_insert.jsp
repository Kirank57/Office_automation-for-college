<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("s_id");
String b=request.getParameter("sal_amount");
String c=request.getParameter("sal_date");
String d=request.getParameter("status");
int z=s.stm.executeUpdate("insert into salary_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"')");
%>
<script>
alert("values are inserted");
document.location="salary_view.jsp";
</script>