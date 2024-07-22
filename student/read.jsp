<title>Reading...</title>
<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/>
<%
	String un=session.getAttribute("uname").toString();
	int z=s.stm.executeUpdate("update notice_details n,student_details s set n.status='Seen' where n.n_to=s.st_id and s.st_email='"+un+"'");
	response.sendRedirect("notice_view.jsp");
%>