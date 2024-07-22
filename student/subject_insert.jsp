<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("b_id");
String b=request.getParameter("sub_name");
String c=request.getParameter("sub_description");
int z=s.stm.executeUpdate("insert into subject_details values(null,'"+a+"','"+b+"','"+c+"')");
%>
<script>
alert("values are inserted");
document.location="subject_view.jsp";
</script>