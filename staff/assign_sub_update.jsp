<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("sub_id");
String b=request.getParameter("s_id");
String c=request.getParameter("id");
int z=s.stm.executeUpdate("update assign_sub_details set sub_id='"+a+"',s_id='"+b+"' where as_id='"+c+"'");
%>
<script>
alert("values are updated");
document.location="assign_sub_view.jsp";
</script>