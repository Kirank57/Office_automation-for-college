<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String id=request.getParameter("id");
String a=request.getParameter("ans");
String b=request.getParameter("uploaded_ans_date");

int z=s.stm.executeUpdate("update quary_details set ans='"+a+"',uploaded_ans_date='"+b+"' where q_id='"+id+"'");
%>
<script>
alert("Replied Successfully");
document.location="quary_view.jsp";
</script>