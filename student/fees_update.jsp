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
String f=request.getParameter("id");
int z=s.stm.executeUpdate("update fees_details set st_id='"+a+"',sem='"+b+"',f_total='"+c+"',f_paid='"+d+"',f_p_date='"+e+"' where f_id='"+f+"'");
%>
<script>
alert("values are updated");
document.location="fees_view.jsp";
</script>