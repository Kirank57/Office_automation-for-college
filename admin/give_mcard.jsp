<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 

<%@page import="java.util.Date"%>

<%
String mid=request.getParameter("id");


Date d1=new Date();
int dd,mm,yy;
yy=d1.getYear()+1900; mm=d1.getMonth()+1; dd=d1.getDate();
String dt=yy+"-"+mm+"-"+dd;

int z=s.stm.executeUpdate("update markscard_details set m_status='took',m_date='"+dt+"' where m_id='"+mid+"'");
%>
<script>
alert("Marks Card Given to Student Successfully");
document.location="markscard_view.jsp";
</script>