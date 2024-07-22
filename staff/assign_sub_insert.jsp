<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("sub_id");
String b=request.getParameter("s_id");
int z=s.stm.executeUpdate("insert into assign_sub_details values(null,'"+a+"','"+b+"')");
%>
<script>
alert("values are inserted");
document.location="assign_sub_view.jsp";
</script>