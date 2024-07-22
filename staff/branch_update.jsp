<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("b_name");
String b=request.getParameter("b_description");
String c=request.getParameter("b_hod");
String d=request.getParameter("b_fees");
String e=request.getParameter("id");
int z=s.stm.executeUpdate("update branch_details set b_name='"+a+"',b_description='"+b+"',b_hod='"+c+"',b_fees='"+d+"' where b_id='"+e+"'");
%>
<script>
alert("values updated");
document.location="branch_view.jsp";
</script>