<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
	<body background="../image/bg2.jpg">
<form>
  <p><font color="#990000" size="+4">Welcome in Administrator Account </font></p>
  <table width="100%" height="257" bgcolor=<body background="../image/bg2.jpg">
    <tr valign="top">
      <td width="18%" align="left" valign="top"><img src="../image/pic_1.jpg" /><br />
          <img src="../image/images5.jpg" width="148" /><br />
          <img src="../image/photo.jpg" width="148" height="192" /><br />
          <img src="../image/hoover-index_r2_c1.jpg" width="147" /><br />
          <img src="../image/images13.jpg" /><br />
          <br />
          <br />
          <br />
          <br />
      </td>
      <td width="82%" height="24" align="left" valign="top"><p><font size="+3" color="#996600">Membership Request Display Form: </font><br />
      </p>
        <p align="right"><font size="+1" color="#000099"><a href="adacc.jsp"><strong><img src="../image/back.jpg"  width="92" height="36"></strong></a></font></p>
        <p align="center">
          <%
    Connection c;
    Statement s;
	ResultSet r;
    try
     {
      
	 
     Class.forName("com.mysql.jdbc.Driver");  
     c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Restaurant","root","sbit");     
     s=c.createStatement();
	 r=s.executeQuery("select *from member");
	 out.println("<table>");
	 out.println("<tr>");
	 out.println("<th>");
	 out.println("User Name");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Customer Name");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Address");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Mob Num");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Date Of Birth");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Occupation");
	 out.println("</th>");
       out.println("<th>");
	 out.println("Food Type");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Monthly visit");
	 out.println("</th>");
	 out.println("<th>");
	// out.println("Annual Income");
	 out.println("</th>");
	 
	 out.println("</tr>");
	
	 while(r.next())
	  { 
        out.println("<tr>");
		out.println("<td>"+r.getString(1)+"</td>");
		out.println("<td>"+r.getString(2)+"</td>");
		out.println("<td>"+r.getString(3)+"</td>");
		out.println("<td>"+r.getString(4)+"</td>");
            out.println("<td>"+r.getString(5)+"</td>");
            out.println("<td>"+r.getString(6)+"</td>");
            out.println("<td>"+r.getString(7)+"</td>");
            out.println("<td>"+r.getString(8)+"</td>");
		out.println("<td>"+r.getString(9)+"</td>");
//out.println("<td>"+r.getString(cid)+"</td>");

		out.println("</tr>");
	  }
	  out.println("</table>");
	  }catch(Exception e)
	  {
	  out.println(e);
	  }
%>
        </p>
        <p align="center"><img src="../image/footer_bckg.jpg" width="680" /></p></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p align="center">&nbsp;</p>
  <p>&nbsp; </p>
  <p align="center">&nbsp;</p>
</form>
</body>
</html>
