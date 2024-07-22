<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("st_id");
String b=request.getParameter("s_id");
String c=request.getParameter("teaching");
String d=request.getParameter("extra_activity");
String e=request.getParameter("performance");
int z=s.stm.executeUpdate("insert into rating_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
%>
<script>
alert("Rating Posted Successfully");
document.location="rating_view.jsp";
</script>