<title>Validating...</title>
<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String chk=request.getParameter("Submit");
if(chk==null)
{
  out.println("<script>history.back();</script>");
}
else
{
  String un=request.getParameter("uname");
  String ps=request.getParameter("pass");
  ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"'");
  if(rs.next())
  {
		ResultSet rs1=s.stm.executeQuery("select * from login where password='"+ps+"'");
		if(rs1.next())
		{
			ResultSet rs2=s.stm.executeQuery("select * from login where username='"+un+"' and password='"+ps+"' and status='active'");
			if(rs2.next())
			{
			   String utp=rs2.getString("type");
			   session.setAttribute("uname",un);
			   if(utp.equals("admin"))
			   {
			      response.sendRedirect("admin/home.jsp");
			   }
			   else if(utp.equals("staff"))
			   {
			      response.sendRedirect("staff/home.jsp");
			   }
			    else if(utp.equals("student"))
			   {
			      response.sendRedirect("student/home.jsp");
			   }
			}
			else
			{
			out.println("<script>alert('Sorry You dont have Permission to Login');document.location='login.jsp';</script>");
			}
		}
		else
		{
		out.println("<script>alert('Invaild or Wrong Password');document.location='login.jsp';</script>");
		}
  }
  else
  {
    out.println("<script>alert('Invaild Username or Username Not Found..!');document.location='login.jsp';</script>");
  }
} 
%>