<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("st_id");
String b=request.getParameter("s_id");
String c=request.getParameter("teaching");
String d=request.getParameter("extra_activity");
String e=request.getParameter("performances");
String f=request.getParameter("id");
int z=s.stm.executeUpdate("update rating_details set st_id='"+a+"',s_id='"+b+"',teaching='"+c+"',extra_activity='"+d+"',performances='"+e+"' where r_id='"+f+"'");
%>
<script>
alert("values are inserted");
document.location="rating_view.jsp";
</script>