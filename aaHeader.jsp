<!DOCTYPE HTML>
<html>

<head>
  <title>Attribute Authority</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
</head>

<body>
  <div id="main">
    <div id="header">
      <center>
	  <div>
        <div>
          <!-- class="logo_colour", allows you to change the colour of the text -->
       <h1><font color="white"><B>Control Cloud Data Access Privilege and Anonymity With Fully Anonymous Attribute-Based Encryption<span></span></a></h1>
         
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="AAHome.jsp">Home</a></li>
         <li><a href="Userslist1.jsp">User's</a></li>
		 <li><a href="Revoke.jsp">Revocation</a></li> 
       <li><a href="index.jsp">Logout</a></li>
        </ul>
      </div>
    </div>
    <div id="site_content">
      <div class="sidebar">
        <!-- insert your sidebar items here -->
        
      </div>
      <div id="content">
        <!-- insert the page content here -->
        
        <%
    String unm=(String)session.getAttribute("unm");
	%>