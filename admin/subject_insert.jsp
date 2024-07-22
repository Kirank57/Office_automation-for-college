<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("sub_name");
String b=request.getParameter("sub_description");
int z=s.stm.executeUpdate("insert into subject_details values(null,'"+a+"','"+b+"')");
%>
<script>
alert("New Subject Added");
document.location="subject_view.jsp";
</script>