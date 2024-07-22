<%@page import="java.sql.*"%>
<%@page import="office.automation"%>
<jsp:useBean id="s" class="office.automation"/>
<jsp:getProperty name="s" property="conn"/> 
<%
String a=request.getParameter("id");
String b=request.getParameter("f_total");
String c=request.getParameter("f_paid");
String d=request.getParameter("f_pay");
String e=request.getParameter("f_p_date");
String blc=request.getParameter("bl");

int pf=Integer.parseInt(c);
int py=Integer.parseInt(d);
int bl=Integer.parseInt(blc);

if(bl>=py)
{
int pay=pf+py;

int z=s.stm.executeUpdate("update fees_details set f_paid='"+pay+"',f_p_date='"+e+"' where f_id='"+a+"'");
%>
<script>
alert("Fees Paid");
document.location="fees_view.jsp";
</script>
<%
}
else
{
%>
<script>
alert("Paying more then Balance fees");
history.back();
</script>
<%

}%>