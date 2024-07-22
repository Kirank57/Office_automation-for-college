<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("s_id");
String b=request.getParameter("sal_amount");
String c=request.getParameter("sal_date");
String d=request.getParameter("status");
String e=request.getParameter("id");
int z=s.stm.executeUpdate("update salary_details set s_id='"+a+"',sal_amount='"+b+"',sal_date='"+c+"',status='"+d+"' where sal_id='"+e+"'");
%>
<script>
alert("values are updated");
document.location="salary_view.jsp";
</script>