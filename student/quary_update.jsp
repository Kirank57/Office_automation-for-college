<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("q_from");
String b=request.getParameter("q_to");
String c=request.getParameter("quary");
String d=request.getParameter("uploaded_date");
String e=request.getParameter("ans");
String f=request.getParameter("uploaded_ans_date");
String g=request.getParameter("id");
int z=s.stm.executeUpdate("update quary_details set q_from='"+a+"',q_to='"+b+"',quary='"+c+"',uploaded_date='"+d+"',ans='"+e+"',uploaded_ans_date='"+f+"' where q_id='"+g+"'");
%>
<script>
alert("values are inserted");
document.location="quary_view.jsp";
</script>