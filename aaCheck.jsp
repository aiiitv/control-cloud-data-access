<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>
<% String unm=request.getParameter("unm");
String pwd=request.getParameter("pwd");
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet r=st.executeQuery("select * from aareg where uname='"+unm+"' and pass='"+pwd+"' and mk!='None' ");
if(r.next())
	{
	String sts=r.getString(1);
	session.setAttribute("unm",unm);
	response.sendRedirect("AAHome.jsp");
	
}
 else
	{
 response.sendRedirect("aa.jsp?msg1=fail");
	}
}catch(Exception e){e.printStackTrace();}

%>