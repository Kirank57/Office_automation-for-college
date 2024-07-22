<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("sid");

String b=request.getParameter("sal_amount");
String c=request.getParameter("sal_date");

String dd=request.getParameter("mnt");
String yy=request.getParameter("yr");

ResultSet rs=s.stm.executeQuery("select * from salary_details where s_id='"+a+"' and sal_month='"+dd+"' and sal_year='"+yy+"'");
if(rs.next())
{
%>
<script>
alert("Aready Paid");
document.location="salary_form.jsp";
</script>
<%
}
else
{
int z=s.stm.executeUpdate("insert into salary_details values(null,'"+a+"','"+b+"','"+c+"','"+dd+"','"+yy+"','paid')");
%>
<script>
alert("Salary Paid Successfully");
document.location="salary_view.jsp";
</script>
<%
}
%>