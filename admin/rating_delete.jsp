<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("id");
int z=s.stm.executeUpdate("delete from rating_details where r_id='"+a+"'");
%>
<script>
alert("values are deleted");
document.location="rating_view.jsp";
</script>