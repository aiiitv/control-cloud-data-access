<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*,cp_abe.*" import="javax.swing.JOptionPane"%>



<%! String aaname,uno,attr,gen,loc,degree,spl,eid,cno,adrs,etype;
	int i=0,exp=0;
	String mk;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
aaname=session.getAttribute("unm").toString();
uno=request.getParameter("uno");
attr=request.getParameter("attr");

Statement st11=con.createStatement();
ResultSet rss=st11.executeQuery("select mk from aareg where  uname='"+aaname+"' ");
if(rss.next()){
mk=rss.getString(1);
}

//System.out.println(pwd);
%>
<%
Statement st1=con.createStatement();
cpabe cp=new cpabe();
cp.generateKeys();
String pkey =cp.getPublicKey();
pkey=pkey.substring(0,5);
String skey=cp.getPrivateKey();
skey=skey.substring(0,5);
	//response.sendRedirect("register.jsp");

 int rs=st1.executeUpdate("insert into keygen1 values('"+aaname+"','"+uno+"','"+attr+"','"+pkey+"','"+skey+"','"+mk+"')");
 if(rs!=0)
	{

	response.sendRedirect("Userslist1.jsp?keys=succ");
}
	else{
	response.sendRedirect("Userslist1.jsp?keys=fail");

}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
