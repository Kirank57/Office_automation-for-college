<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("st_id");
String b=request.getParameter("sm");
String c=request.getParameter("f_total");
String d=request.getParameter("f_paid");
String e=request.getParameter("f_p_date");

ResultSet rs=s.stm.executeQuery("select * from student_details sd,fees_details fd where sd.st_id=fd.st_id and fd.st_id='"+a+"' and sd.st_sem='"+b+"'");
if(rs.next())
{
%>
<script>alert("Fees Alredy Paid");history.back();</script>
<%
}
else
{
int z=s.stm.executeUpdate("insert into fees_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
%>
<script>
alert("Fees Paid Successfully");
document.location="fees_view.jsp";
</script>
<%
}
%>