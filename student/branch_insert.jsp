<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("b_name");
String b=request.getParameter("b_description");
String c=request.getParameter("b_hod");
String d=request.getParameter("b_fees");
int z=s.stm.executeUpdate("insert into branch_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"')");
%>
<script>
alert("values are inserted");
document.location="branch_view.jsp";
</script>