<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String sm=request.getParameter("st_sem");
String b=request.getParameter("st_regno");
String c=request.getParameter("st_fname");
String d=request.getParameter("st_lname");
String e=request.getParameter("st_dob");
String f=request.getParameter("st_content");
String g=request.getParameter("st_email");
String h=request.getParameter("st_address");
//String i=request.getParameter("st_photo");
ResultSet rs=s.stm.executeQuery("select * from student_details where st_email='"+g+"'");
if(rs.next())
{
   out.println("<script>alert('Email-ID already used or exists');history.back();</script>");
}
else
{
	ResultSet rs1=s.stm.executeQuery("select * from student_details where st_content='"+f+"' and st_regno='"+b+"'");
    if(rs1.next())
    {
       out.println("<script>alert('Mobile No. already used or exists');history.back();</script>");
    }
    else
    {
		ResultSet rs2=s.stm.executeQuery("select * from student_details where st_regno='"+b+"'");
        if(rs2.next())
		{
		   out.println("<script>alert('Reg. No. already used or exists');history.back();</script>");
		}
		else
		{
		int z=s.stm.executeUpdate("insert into student_details values(null,'1','"+sm+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','user.png')");
		int zz=s.stm.executeUpdate("insert into login values('"+g+"','"+f+"','student','What is my Date of birth?','"+e+"','active')");
		int zzz=s.stm.executeUpdate("insert into markscard_details values(null,'"+b+"','"+sm+"','-','available')");
%>
		   <script>
		   alert("You've Registed Successfully");
		   alert("Your UserName:<%=g%> and Password: Reg. Mobile No.");
		   document.location="login.jsp";
		   </script>
<%
        }
    }
}
%>