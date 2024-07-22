<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("n_to");
String b=request.getParameter("n_date");
String c=request.getParameter("notice");
String d=request.getParameter("id");
int z=s.stm.executeUpdate("update notice_details set n_to='"+a+"',n_date='"+b+"',notice='"+c+"' where n_id='"+d+"'");
%>
<script>
alert("values are updated");
document.location="notice_view.jsp";
</script>