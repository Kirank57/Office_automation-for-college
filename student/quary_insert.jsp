<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("q_from");
String b=request.getParameter("q_to");
String c=request.getParameter("quary");
String d=request.getParameter("uploaded_date");
//String e=request.getParameter("ans");
//String f=request.getParameter("uploaded_ans_date");
int z=s.stm.executeUpdate("insert into quary_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','-','-')");
%>
<script>
alert("Query Sent Successfully");
document.location="quary_view.jsp";
</script>