<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("n_to");
String b=request.getParameter("n_date");
String c=request.getParameter("notice");
int z=s.stm.executeUpdate("insert into notice_details values(null,'"+a+"','"+b+"','"+c+"')");
%>
<script>
alert("values are inserted");
document.location="notice_view.jsp";
</script>