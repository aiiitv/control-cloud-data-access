<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane,java.math.BigInteger,java.security.*,java.security.spec.*,javax.crypto.KeyAgreement"
%>

<%! String name,username,pasword,gen,doj,branch,dept,subdept,id,cno,adrs;
	int i=0,exp=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

id=request.getParameter("id");
//System.out.println(pwd);
%>
<%

	Random rr=new Random();
int  mk=rr.nextInt(100000);
Statement st1=con.createStatement();
int q= st.executeUpdate("update aareg set mk="+mk+" where no="+id+" ");
if(q>0)
	{
//ECCKeyAgreement ecc=new ECCKeyAgreement(id);
//ecc.generateKGCkey();
	response.sendRedirect("aalist.jsp?msg=success");
	}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
