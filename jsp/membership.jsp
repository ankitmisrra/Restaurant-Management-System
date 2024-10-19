<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<HTML>
<body background="../image/bg2.jpg">
<body>
<%!int i; %>
<%if(request.getParameter("t1")!=null){%>
<%  Connection c;
    Statement s;
    String cid,s1,s2,s3,s4,s5,s6,s8,s9;
	try
     { 

     Class.forName("com.mysql.jdbc.Driver");  
     c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Restaurant","root","sbit");          
     s=c.createStatement();
                
                 cid=request.getParameter("cid");
                 s1=request.getParameter("t1");
	 s2=request.getParameter("t2");
	 s3=request.getParameter("t3");
	 s4=request.getParameter("t4");
	 s5=request.getParameter("t5")+","+request.getParameter("t6")+","+request.getParameter("t7");
     s6=request.getParameter("t8");
     String t[]=request.getParameterValues("t9");
String s7="";
for(int i=0;i<t.length;i++)
{
s7+=t[i]+",";
}
       s8=request.getParameter("t10");
	   s9=request.getParameter("t11");

	 i=s.executeUpdate("insert into member values('"+cid+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"')");
    }
	 catch(Exception e)
	  {
	  out.println(e);
	  }
	   if(i>0)
	   {%>
	   <script language="javascript">
	  alert("Request Recieved");
	  </script>
 
	<% } }%>

<form name="det" id="det" onSubmit=" return validate();" method="get" action="">
<table width="100%" height="257">
  <tr valign="top">
    <td width="23%" height="24" align="center"><p><strong>
      <marquee>
        </marquee>
    </strong><h3>We Accept</h3> </p>
      <p><font size="+1" color="#000099"><a href="Home.jsp"><img src="../image/Home2.jpg"  width="92" height="36"></a></font></p>
        <p><img src="../image/payonline1.png" width="160" height="250" /> </p>
      <p><img src="../image/upi.gif" width="200" height="150" /></p>
      <p><img src="../image/desithali.gif"../image/header.jpg" width="202" height="263" /></p>
      <p>&nbsp;</p></td>
    <td width="50%" valign="top" align="left"><p><font size="+2" color="#990000">Customer Membership  Form : </font></p>
 <h1 align="center" font color="red"><marquee>ANKIT'S RESTAURANT</marquee></h1>
        <table width="510" height="872">  
        <tr>
            <td width="196" height="45" align="right"><b>CustomerId</b></td>
            <td width="302" align="left"><input type="text" name="cid" size="20"  /></td>
          </tr>
          <tr>
            <td width="196" height="45" align="right"><b>CustomerName:</b></td>
            <td width="302" align="left"><input type="text" name="t1" size="20"  /></td>
          </tr>
          <tr>
            <td width="196" height="100" align="right"><strong>Address:</strong></td>
            <td width="302" align="left"><textarea name="t2" cols="35" rows="5" ></textarea></td>
          </tr>
          <tr>
            <td width="196" height="45" align="right"><b>Contact No:</b></td>
            <td width="302" align="left"><input type="text" name="t3" size="20" /></td>
          </tr>
          <tr>
            <td width="196" height="44" align="right"><b>Email Id:</b></td>
            <td width="302" align="left"><input type="text" name="t4" size="20"  /></td>
          </tr>
          <tr>
            <td width="196" align="right"><b>Date Of Birth :</b></td>
            <td width="302" align="left"> <strong>Date</strong> 
              <select name="t5">
              <%
for(int vl=1;vl<32;vl++){%>
              <option value="<%=vl%>"><%=vl%></option>
              <%}%>
            </select> 
              <strong>Month</strong> 
              <select name="t6">
                <%
for(int vl=1;vl<=12;vl++){%>
                <option value="<%=vl%>"><%=vl%></option>
                <%}%>
              </select> 
              <strong>Year              </strong>              <select name="t7">
                <%
for(int vl=1960;vl<=2022;vl++){%>
                <option value="<%=vl%>"><%=vl%></option>
                <%}%>
            </select></td>
          </tr>
          <tr>
            <td width="196" height="45" align="right"><strong>Occupation:</strong></td>
            <td width="302" align="left"><strong>Service</strong>
              <input type="radio" name="t8" value="Service" /><strong>Bussiness</strong><input type="radio" name="t8" value="Bussiness" />
              <strong>Other</strong>
            <input type="radio" name="t8" value="Other" /></td>
          </tr>
          <br />
          <br />
          <tr>
            <td align="right"></td>
			<hr color="#000000" />
            <td align="left"><p><strong>Select Food Choice: </strong>
			   <hr color="#000000" />
			  <strong>Chinies</strong>
              <input type="checkbox" name="t9" value="Chinies">
              <strong>Muglai</strong>
              <input type="checkbox" name="t9" value="Muglai"><br>
			  <hr color="#000000" />
			  <strong>South Indian</strong>
              <input type="checkbox" name="t9" value="South Indian">
              <strong>North Indian</strong>
              <input type="checkbox" name="t9" value="North Indian"><br>
			  <hr color="#000000" />
              <strong>Continental</strong>
              <input type="checkbox" name="t9" value="Continental">
              <strong>Punjabi</strong>
              <input type="checkbox" name="t9" value="Punjabi"/><br>
			  <hr color="#000000" />
			  <strong>Other</strong>
              <input type="checkbox" name="t9" value="Other" />
            </p>            </td>
          </tr>
          <tr>
            <td width="196" align="right"></td>
          <tr>
            <td width="196" align="right"><b>In Month how many times you like to have food outside </b></td>
            <td width="302" align="left"><input type="text" name="t10" size="20" /></td>
          </tr>
		   <tr>
            <td width="196" height="27" align="right"><strong>Annual Income </strong></td>
            <td width="302" align="left"><strong>less then 20000</strong>
              <input type="radio" name="t11" value="less then 20000" /><strong>20000 to 50000</strong><input type="radio" name="t11" value="20000" to 50000 />
              <strong>More then 50000</strong>
             <input type="radio" name="t11" value="More then 50000" /></td>
          </tr>
		  <tr>
		  <td width="196" align="left"><input name="submit" type="submit" value="Register"  onclick="blank();numericblank()"/></td>
	      </tr>
           		   <tr>
            <td align="right"></td>
            <td align="left">&nbsp;</td>
          </tr>
		   <tr>
            <td align="right"></td>
            <td align="left">&nbsp;</td>
          </tr>
		   <tr>
            <td align="right"></td>
            <td align="left">&nbsp;</td>
          </tr>
		   <tr>
            <td align="right"></td>
            <td align="left">&nbsp;</td>
          </tr> <tr>
            <td align="right"></td>
            <td align="left">&nbsp;</td>
          </tr>
      </table></td>
    <td width="23%"  valign="top" background=""><p align="center"><img src="../image/discount.jpg" width="202" height="150" /></p>
        <p align="center"><img src="../image/diner.gif" width="202" height="150" /></p>
      <p align="center"><img src="../image/ice.gif" width="202" height="100" /></p>
      <p align="center"><img src="../image/food.gif" width="202" height="110" /></p>
      <p align="center"><img src="../image/spanish.gif" width="162" height="200" /><br />
         
      <p align="center"><img src="../image/piza.gif" width="200" height="100" /></p>
      <p align="center"><br />
       
      <p align="center">&nbsp;</p></td>
  </tr>
</table>
</form>
</body>
</html>