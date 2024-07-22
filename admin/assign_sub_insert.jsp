<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("sub_id");
String b=request.getParameter("s_id");
ResultSet rs=s.stm.executeQuery("select * from assign_sub_details where sub_id='"+a+"' and s_id='"+b+"'");
if(rs.next())
{
out.println("<script>alert('Already Assigned');document.location='assign_sub_form.jsp';</script>");
}
else
{
int z=s.stm.executeUpdate("insert into assign_sub_details values(null,'"+a+"','"+b+"')");
%>
<script>
alert("Subject Assigned");
document.location="assign_sub_view.jsp";
</script>
<%
}
%>