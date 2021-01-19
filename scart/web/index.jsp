<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<script type="text/javascript" src="scripts/slideshow.js"></script>

<script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>

  <title>Home</title>

<link href="css/main.css" rel="stylesheet" type="text/css">


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

<body onLoad="MM_preloadImages('images/m_phones/s.gif','images/m_phones/h.gif','images/m_phones/sa.gif','images/m_phones/n.gif')">

<!--Start Container -->
<div id="container">


<!--Start Top Bar-->	
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
            
            <% if(session.getAttribute("count")!=null){
           out.print(session.getAttribute("count"));}%>
            
            </font></a> </li>
<% if(session.getAttribute("user")!=null){
    
out.print("Welcome");

%>


<li style="background-color: transparent;"><a href="Logout">Logout</a></li>

<li style="background-color: transparent;"><a href="<%if(session.getAttribute("admin")!=null){
            
out.print("admin.jsp");
}else
out.print("viewuserhstr.jsp");   
%>"><%=session.getAttribute("user")%></a></li>

<% }else{ %>

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
   
    <form action="Search" method="get" target="_blank">
<input name="q" type="text">
<input type="submit" value="Search"> </form>
</font></div>
</div>
<!--End Header-->
<!--Start slideshow-->
<center>
<script language="JavaScript" type="text/javascript">
	AC_FL_RunContent(
		'codebase', 'http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0',
		'width', '100%',
		'height', '434',
		'src', 'piecemaker',
		'quality', 'high',
		'pluginspage', 'http://www.adobe.com/go/getflashplayer_de',
		'align', 'middle',
		'play', 'true',
		'loop', 'true',
		'scale', 'noscale',
		'wmode', 'window',
		'devicefont', 'false',
		'id', 'piecemaker',
		'bgcolor', '#ffffff',
		'name', 'piecemaker',
		'menu', 'true',
		'allowFullScreen', 'false',
		'allowScriptAccess','sameDomain',
		'movie', 'piecemaker',
		'salign', ''
		); //end AC code
</script>
<noscript>
	<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0" width="100%" height="100%" id="piecemaker" align="middle">
	<param name="allowScriptAccess" value="sameDomain" />
	<param name="allowFullScreen" value="false" />
	<param name="movie" value="piecemaker.swf" /><param name="quality" value="high" /><param name="scale" value="noscale" /><param name="bgcolor" value="#ffffff" />	<embed src="piecemaker.swf" quality="high" scale="noscale" bgcolor="#ffffff" width="100%" height="100%" name="piecemaker" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/go/getflashplayer_de" />
	</object>
</noscript>
</center>
<!--End slideshow-->

<!--Start Main Menu-->
<table width="100%" border="0" background="images/menu/bg.gif">
  <tr>
    <td><a href="index.jsp"><img src="images/menu/Home_r.gif" width="115" height="27"  alt=""/></a></td>
    <td><a href="Search?q=Nokia" target="_new" onMouseOver="MM_swapImage('Image6','','images/menu/Beer_r.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/menu/Beer.gif" width="128" height="30" id="Image6"></a></td>
    <td><a href="Search?q=Sony" target="_new" onMouseOver="MM_swapImage('Image7','','images/menu/Wine_r.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/menu/Wine.gif" width="115" height="27" id="Image7"></a></td>
    <td><a href="Search?q=HTC" target="_new" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image8','','images/menu/Spirit_r.gif',1)"><img src="images/menu/Spirit.gif" width="128" height="30" id="Image8"></a></td>
    <td><a href="Search?q=Samsung" target="_new" onMouseOver="MM_swapImage('Image9','','images/menu/Champagne_r.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/menu/Champagne.gif" width="128" height="30" id="Image9"></a></td>
    <td><a href="our_stores.jsp" target="_new" onMouseOver="MM_swapImage('Image10','','images/menu/Our_Stores_r.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/menu/Our_Stores.gif" width="128" height="30" id="Image10"></a></td>
    <td><a href="about_us.jsp" target="_new" onMouseOver="MM_swapImage('Image11','','images/menu/About_Us_r.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/menu/About_Us.gif" width="128" height="30" id="Image11"></a></td>
  </tr>
</table>
<!--End Main Menu-->

<!--Start Bottle-->       
<table width="80%" border="0" align="center">
  <tbody>
<tr>
<br>
<td width="25%" height="320px" align="center" valign="top"><a href="Search?q=Nokia" target="_new" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image16','','images/m_phones/n.gif',1)"><img src="images/m_phones/n_r.gif" alt="" width="150" height="300" id="Image16"></a>
</td>
<td align="center" valign="top" width="25%"><a href="Search?q=Sony" target="_new" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image17','','images/m_phones/s.gif',1)"><img src="images/m_phones/s_r.gif" alt="" width="150" height="300" id="Image17"></a></td>
<td align="center" valign="top" width="25%"><a href="Search?q=HTC" target="_new" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image18','','images/m_phones/h.gif',1)"><img src="images/m_phones/h_r.gif" alt="" width="150" height="300" id="Image18"></a></td>
<td align="center" valign="top" width="25%"><a href="Search?q=Samsung" target="_new" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image19','','images/m_phones/sa.gif',1)"><img src="images/m_phones/sa_r.gif" alt="" width="150" height="300" id="Image19"></a></td>

</tr>

</tbody>
</table>
<br>
<!--End Bottle-->
</div>    
        <!-- Footer  -->
        <table width="100%" border="0" background="images/social/bg.gif">
        <tr>
    <td colspan="8"></td>
    </tr>
  <tr>
    <td width="12.5%"  align="center" ><a href="#" target="new"><img src="images/social/fb.gif" width="40" height="40"></a></td>
    <td width="12.5%"  align="center" ><a href="#" target="new"><img src="images/social/tw.gif" width="40" height="40"></a></td>
    <td width="12.5%"  align="center" ><a href="#" target="new"><img src="images/social/g.gif" width="40" height="40"></a></td>
    <td width="12.5%"  align="center" ><a href="#" target="new"><img src="images/social/p.gif" width="40" height="40"></a></td>
    <td width="12.5%"  align="center" ><a href="#" target="new"><img src="images/social/li.gif" width="40" height="40"></a></td>
    <td width="12.5%"  align="center" ><a href="#" target="new"><img src="images/social/you.gif" width="40" height="40"></a></td>
    <td width="12.5%"  align="center" ><a href="#" target="new"><img src="images/social/rss.gif" width="40" height="40"></a></td>
    <td width="12.5%" align="center" style="color:#FFF; font-size:14px"><b>&copy 2018 | The Phone Shop | NSBM | pasindu | prabuddha | sandali| sandun | sathya</b></td>
    </tr>
    <td colspan="8"></td>
</table>
<hr>

<!--End footer -->

</body>
</html>
