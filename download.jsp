<%@ include file="uHeader.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>FA-ABE</title>
<body>
    <div ><br><br>
<center><h3>File Download</h3>
<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,username,pasword,gen,doj,branch,dept,subdept,eid,cno,adrs;
	int i=0,exp=0;
%>  
<% if(request.getParameter("kmsg")!=null){
	  out.println("<script>alert('Request Sent to KGC')</script>");
}%>
<% if(request.getParameter("dmsg")!=null){
	  out.println("<script>alert('Request Sent to DSC')</script>");
}%>

<% if(request.getParameter("req")!=null){
	  out.println("<script>alert('Approved by  Admin')</script>");
}
if(request.getParameter("msg")!=null){
	  out.println("<script>alert('Sorry, this file can not  Access by You')</script>");
}
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
%><center>
<table border=2 align="center"><tr><th>Fid.</th><th>FileName</th><th>FileData</th></tr>
<%
ResultSet r=st.executeQuery("select *from filestore");
while(r.next()){%>
<tr><td><strong><%=r.getInt(1)%></strong></td><td><strong><%=r.getString(2)%></td><td><strong><a href="View.jsp?id=<%=r.getInt(1)%>"><font size="" color="#3366cc">View</font></td>
<%}}catch(Exception e){e.printStackTrace();}%>
</div ></table>
</body>
</html><br><br><br><br><br><br>
<%@ include file="Footer.jsp"%>