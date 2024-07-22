<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("b_id");
String b=request.getParameter("sub_name");
String c=request.getParameter("sub_description");
String d=request.getParameter("id");
int z=s.stm.executeUpdate("update subject_details set b_id='"+a+"',sub_name='"+b+"',sub_description='"+c+"' where sub_id='"+d+"'");
%>
<script>
alert("values are updated");
document.location="subject_view.jsp";
</script>