<%@page import="srch.Cart"%>
<%@page import="srch.Crt"%>
<%@page import="java.util.ArrayList"%>
<%@page import="srch.DBconnection"%>
<%@page import="srch.Srch"%>
<%@page import="java.io.PrintWriter"%>

<%@page import="srch.Search"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Search result for "<%= request.getAttribute("sString")%>"</title>

    <style>
        #img:hover{

            opacity: .8;
            -webkit-opacity: .8;
            -moz-opacity: .8;
        }
        #lnk:hover{

            color: red;
        }

    </style>     

    <script type="text/javascript" src="scripts/slideshow.js"></script>

    <script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>




    <link href="css/main.css" rel="stylesheet" type="text/css">

    <SCRIPT LANGUAGE="JavaScript">

        //-->
    </SCRIPT>

</script>

<script type="text/javascript">

<!--Start Top menu JS -->
var tba = jQuery.noConflict();
	tba(document).ready(function(){  
            var scroll_pos = 0;
            tba(document).scroll(function() { 
                scroll_pos = tba(this).scrollTop();
                if(scroll_pos > 25) {
					
					tba("#topbar").css('background-color', '#001c38');
					tba("#topbar").css('background-image',' transparent');
					tba("#topbar a").css('color', '#FFFFFF');
					tba(".vm_sum").css('color', '#FFFFFF');
					tba("#topbar div").css('color', '#FFFFFF');
					tba("#vm_module_cart .lof_vm_top .lof_top_2 .vm_readmore").css('color', '#FFFFFF');
					tba("#topbar li").css('background', 'transparent');
				}
				
				else {
                    tba("#topbar").css('background',' transparent');
					tba("#topbar a").css('color', '#001c38');
					tba(".vm_sum").css('color', '#001c38');
					tba("#topbar div").css('color', '#001c38');
					tba("#vm_module_cart .lof_vm_top .lof_top_2 .vm_readmore ").css('color', '#001c38');
                	tba("#topbar li").css('background', 'transparent');
				}
            });
        });
<!--End Top menu JS -->
<!--Start Js bottle rollover -->
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
<!--End Js bottle rollover -->
</script>

</head>

<body> 

    <!--Start Container -->
    <div id="container">


        <!--Start Top Menu-->	
        <div id="topbar" style="background-color: transparent;">
            <div class="subcontainer" style="color: rgb(165, 34, 35);">
                <div class="moduletable grid24 mobcall lspace" style="color: rgb(165, 34, 35);">



                    <p>Call Us:  +94712345678</p></div>
            </div>

            <div class="moduletable grid16 vmmobile rspace" style="color: rgb(165, 34, 35);">
                <div class="lof_vm_top" style="color: rgb(165, 34, 35);">
                </div>				
                <ul class="menu">
                    <li style="background-color: transparent;"><a href="cart.jsp">Cart <font style="color:#0CF">
                            <% if (session.getAttribute("count") != null) {
                                    out.print(session.getAttribute("count"));
                                }%>

                            </font></a> </li>
                            <% if (session.getAttribute("user") != null) {


                            %>


                    <li style="background-color: transparent;"><a href="Logout">Logout</a></li>

                    <li style="background-color: transparent;"><a href="<%if(session.getAttribute("admin")!=null){
            
out.print("admin.jsp");
}else
out.print("viewuserhstr.jsp");   
%>"><%=session.getAttribute("user")%></a></li>

                    <% } else { %>

                    <li style="background-color: transparent;"><a href="register.jsp">SIGN UP</a></li>
                    <li style="background-color: transparent;"><a href="login.jsp">Log in</a></li></ul>
                        <% } %>
            </div>
            <!--End Top Bar-->

        </div>
    </div>

    <!--Start Header-->
    <div id="header">

        <!-- Title -->
        <div><font face="Tahoma, Geneva, sans-serif" color="#FFFFFF" size="+3" style="position:relative; top:-25px ; left:15px"><img src="images/liq.gif" width="254" height="55"><br></font>
            <span style="position:relative; top:-70px ; float:right; left:-15px">
                <form action="Search" method="get">
                    <input name="q" type="text">
                    <input type="submit" value="Search"> </form>
            </font></div>
    </div><br>
    <table width="100%" border="0" background="images/menu/bg.gif" style="position:relative; top:8px">
        <tr>
            <td><a href="index.jsp" target="_new" onMouseOver="MM_swapImage('Image5', '', 'images/menu/Home_r.gif', 1)" onMouseOut="MM_swapImgRestore()"><img src="images/menu/Home.gif" width="128" height="30" id="Image5"></a></td>
            <td><a href="Search?q=Nokia" target="_new" onMouseOver="MM_swapImage('Image6', '', 'images/menu/Beer_r.gif', 1)" onMouseOut="MM_swapImgRestore()"><img src="images/menu/Beer.gif" width="128" height="30" id="Image6"></a></td>
            <td><a href="Search?q=Sony" target="_new" onMouseOver="MM_swapImage('Image7', '', 'images/menu/Wine_r.gif', 1)" onMouseOut="MM_swapImgRestore()"><img src="images/menu/Wine.gif" width="115" height="27" id="Image7"></a></td>
            <td><a href="Search?q=HTC" target="_new" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image8', '', 'images/menu/Spirit_r.gif', 1)"><img src="images/menu/Spirit.gif" width="128" height="30" id="Image8"></a></td>
            <td><a href="Search?q=Samsung" target="_new" onMouseOver="MM_swapImage('Image9', '', 'images/menu/Champagne_r.gif', 1)" onMouseOut="MM_swapImgRestore()"><img src="images/menu/Champagne.gif" width="128" height="30" id="Image9"></a></td>
            <td><a href="our_stores.jsp" target="_new" onMouseOver="MM_swapImage('Image10', '', 'images/menu/Our_Stores_r.gif', 1)" onMouseOut="MM_swapImgRestore()"><img src="images/menu/Our_Stores.gif" width="128" height="30" id="Image10"></a></td>
            <td><a href="about_us.jsp" target="_new" onMouseOver="MM_swapImage('Image11', '', 'images/menu/About_Us_r.gif', 1)" onMouseOut="MM_swapImgRestore()"><img src="images/menu/About_Us.gif" width="128" height="30" id="Image11"></a></td>
        </tr>
    </table>
    <!--End Header-->
    <!--Start slideshow-->
<center>

</center>
<!--End slideshow-->

<!--Start Main Menu-->

<!--End Main Menu-->

<!--Start Bottle-->       

<br><br><br><br><br><br>

<table align="center">
    <% if (session.getAttribute("price") != null) {

            String[] price = (String[]) session.getAttribute("price");
            String[] imagName = (String[]) session.getAttribute("imagName");
            String[] name = (String[]) session.getAttribute("name");
            int cnt = price.length;
            int sum=0;
            for (int i = 0; i < cnt; i++) {
            sum=sum+Integer.parseInt(price[i]);

    %>

    <tr>
        <td height=50px width="200px" style='border: 1px solid #98bf21;'><%out.print("<h2><center>"+name[i]+"</center></h2>");%></td> 
        <td height=50px width="080px" style='border: 1px solid #98bf21;'><%out.print("<h3><center>Rs. "+price[i]+"</center></h3>");%></td>
        <td height=50px width="200PX" style='border: 1px solid #98bf21;'><center><img src="images/mobiles/<%=(imagName[i])%>"alt="" id="img"/></center></td>
        <td>
            <form action="" method="post">

                <input type="hidden" name="price" value="<%=price[i]%>">
                <input type="hidden" name="ImagName" value="<%=imagName[i]%>">
                <input type="hidden" name="name" value="<%=name[i]%>">

                <!--<button type="submit" name="rmv" value="rmve" onClick="window.alert('All items have been removed')">Remove</button>-->

            </form>
        </td>
    </tr>




    <%} %>
    <form action="CartEmp" method="post">
        <tr>
            <td height=50px width="200px" style='border: 1px solid #98bf21;'><h2><center>Total :</center></h2></td>
            <td height=50px width="080px" style='border: 1px solid #98bf21;'><font size="2">
                
                <%out.print("<h3><center>Rs. "+sum+"</center></h3>");%></font></td>
            <td height=50px width="300PX" style='border: 1px solid #98bf21;'><br><button class="sortBtn" type="submit" name="EmptyCart" style="position: relative; left:40px;top:5px" value="emptyCrt" onClick="window.alert('All items have been removed')"><b>Empty Cart</b></button>
       </form>
 <form action="Checkout" method="post">
                <% if(session.getAttribute("user")!=null){ %>
            <button style="color:blue; position: relative; top:-17px;left:180px" class="sortBtn" type="submit" value="itm" name="item" ><b>Checkout</b></button></td>
            <% 
            
                }else{
                    out.print("<br><br>* Please <b>login</b> to checkout");
                } 
                %>
            
        </tr>
    </form>


</table>
<%} else {

        out.print("<center><b>Empty Cart<br>"
                + "</b>"
                + "<img src='images/user/empty_cart.png' width='249' height='249'/></center>");
    }
%> 

</table>
<br><br><br><br><br><br>

<!--End Bottle-->
</div>    
<!-- Footer  -->
<table width="100%" border="0" background="images/social/bg.gif">
    <tr>
        <td colspan="8"></td>
    </tr>
    <tr>
        <td width="12.5%"  align="center" ><a href="https://www.facebook.com/#" target="new"><img src="images/social/fb.gif" width="40" height="40"></a></td>
        <td width="12.5%"  align="center" ><a href="https://www.twitter.com/#" target="new"><img src="images/social/tw.gif" width="40" height="40"></a></td>
        <td width="12.5%"  align="center" ><a href="https://plus.google.com/#" target="new"><img src="images/social/g.gif" width="40" height="40"></a></td>
        <td width="12.5%"  align="center" ><a href="https://www.pinterest.com/#" target="new"><img src="images/social/p.gif" width="40" height="40"></a></td>
        <td width="12.5%"  align="center" ><a href="https://www.linkedin.com/#" target="new"><img src="images/social/li.gif" width="40" height="40"></a></td>
        <td width="12.5%"  align="center" ><a href="https://www.youtube.com/#" target="new"><img src="images/social/you.gif" width="40" height="40"></a></td>
        <td width="12.5%"  align="center" ><a href="https://www.facebook.com/#" target="new"><img src="images/social/rss.gif" width="40" height="40"></a></td>
        <td width="12.5%" align="center" style="color:#FFF; font-size:14px"><b>&copy 2015 | The Phone Shop | NSBM | Asith | Gihan | Tharanga | Adheesha| Lahiru</b></td>
    </tr>
    <td colspan="8"></td>
</table>
<hr>

<!--End footer -->
</body>


</html>




