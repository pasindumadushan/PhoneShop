<html>
<head>

<meta charset="UTF-8">
<script type="text/javascript" src="scripts/slideshow.js"></script>

<script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>

  

  <title>Admin Panel</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
 <script type="text/javascript">
// Popup window code
function phonePopup(url) {
	popupWindow = window.open(
		url,'popUpWindow','height=560,width=960,left=100,top=50,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no,status=yes')
}

function phonePopup2(url) {
	popupWindow = window.open(
		url,'popUpWindow','height=260,width=380,left=100,top=50,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no,status=yes')
}
</script>



</head>

<body onLoad="MM_preloadImages('images/menu/Our_Stores_r.gif','images/menu/Spirit_r.gif')">

<!--Start Container -->
<div id="container">


<!--Start Top Menu-->	
    <div id="topbar" style="background-color: transparent;">
      <div class="subcontainer" style="color: rgb(165, 34, 35);">
                              		<div class="moduletable grid24 mobcall lspace" style="color: rgb(165, 34, 35);">
					


	<p>Admin Panel</p></div>
	  </div>
        
        <div class="moduletable grid16 vmmobile rspace" style="color: rgb(165, 34, 35);">
					<div class="lof_vm_top" style="color: rgb(165, 34, 35);">
             </div>				
<ul class="menu">

<% if(session.getAttribute("user")!=null){
    
out.print("Welcome");

%>


<li style="background-color: transparent;"><a href="Logout">Logout</a></li>

<li style="background-color: transparent;"><a href="admin.jsp"><%=session.getAttribute("user")%></a></li>

<% }else{ %>

</ul>
<% } %>
		</div>
<!--End Top Bar-->
	
  </div>
</div>

<!--Start Header-->
<div id="header">

<!-- Title -->
<div><center>
    <font face="Tahoma, Geneva, sans-serif" color="#FFFFFF" size="+3" style="position:relative; top:-25px ; left:15px">
    <img src="images/liq.gif" width="254" height="55"><br></font></center>
    <span style="position:relative; top:-70px ; float:right; left:-15px">
    
</font></div>
</div><br>
<table width="100%" border="0" background="images/menu/bg.gif" style="position:relative; top:8px; font-size: 20; color: #FFF; font-family:  verdana,helvetica,arial,sans-serif">
  <tr>
      <td width="115" height="50"  align="center"><a href="admin.jsp" target="_new" id="m">Home</a></td>
    <td width="115" height="50"  align="center"><a href="JavaScript:phonePopup('Admin?action=vu');" target="_new"  id="m">View Users</a></td>
    <td width="115" height="50"  align="center"><a href="JavaScript:phonePopup2('duser.jsp');" target="_new"  id="m">Delete Users</a></td>
    <td width="115" height="50"  align="center"><a href="JavaScript:phonePopup('Admin?action=vi');" target="_new"  id="m">View Items</a></td>
    <td width="115" height="50"  align="center"><a href="JavaScript:phonePopup2('ditem.jsp');" target="_new"  id="m">Delete Items</a></td>
  
    
  </tr>
</table>
     
<center><br><br> <%if(session.getAttribute("admin")!=null){%>
    <table>
         <tr height="170" >
                <td width="225"><a href="JavaScript:phonePopup('Admin?action=va');"><img src="images/admin/login.png" width="125" height="125"  alt="" id="adim"/><br>
                        View Admins</a></td>
                <td width="225"><a href="JavaScript:phonePopup2('dadmin.jsp');"><img src="images/admin/user_admin.png" width="125" height="125"  alt="" id="adim"/>
                <br>
                Delete Admins</a></td>
                <td width="225"><a href="JavaScript:phonePopup('addad.jsp');"><img src="images/admin/user_admin_gear.png" width="125" height="125"  alt="" id="adim"/>
                <br>
                Add Admins</a></td>
        </tr>
        <tr><td colspan="3"> <hr></tr>
        <tr>
                <td width="225"><a href="JavaScript:phonePopup('Admin?action=vi');"><img src="images/admin/audit1.png" width="125" height="125"  alt="" id="adim"/><br>
                        View Items</a></td>
                <td width="225"><a href="JavaScript:phonePopup2('ditem.jsp');"><img src="images/admin/forklifttruck_loaded_black_256.png" width="125" height="125"  alt="" id="adim"/>
                <br>
                Delete Items</a></td>
                <td width="225"><a href="JavaScript:phonePopup('additm.jsp');"><img src="images/admin/StockPlusIcon_4column.png" width="125" height="125"  alt="" id="adim"/>
                <br>
                        Add Items</a></td>
        </tr>
        <tr><td colspan="3"> <hr></tr>
        <tr>
                <td width="225"><a href="JavaScript:phonePopup('Admin?action=vu');"><img src="images/admin/user_group.png" width="125" height="125"  alt="" id="adim"/><br>
                        View Users</a></td>
                <td width="225"><a href="JavaScript:phonePopup2('duser.jsp');"><img src="images/admin/remove_male_user_256.png" width="125" height="125"  alt="" id="adim"/>
                <br>
                Delete Users</a></td>
                <td width="225"><a href="JavaScript:phonePopup('Admin?action=vh');"><img src="images/admin/Users.png" width="125" height="125"  alt="" id="adim"/>
                <br>
                        History</a></td>
        </tr>
        <tr><td colspan="3"> <hr></tr>
        <tr>
                <td width="225"><a href="index.jsp"><img src="images/admin/Phone.png" width="125" height="125"  alt="" id="adim"/><br>
                        Login to the Phone Shop</a></td>
                <td width="225"><a href="Logout"><img src="images/admin/Keys-icon.png" width="125" height="125"  alt="" id="adim"/>
                <br>
                Logout</a></td>
                <td width="225"></td>
        </tr>
        
        
    </table>
    
    <% } else{

     // request.getRequestDispatcher("access_denied.jsp").forward(request, response);

}%>
<br>
</center>
<!--End Bottle-->
</div>    
        <!-- Footer  -->
        <table width="100%" border="0" background="images/social/bg.gif">
        <tr>
    <td colspan="8"></td>
    </tr>
  <tr>
    <td align="left" style="color:#FFF; font-size:14px; height: 50px"><b>&copy 2018 | The Phone Shop | NSBM</b></td>
    <td align="right" style="color:#FFF; font-size:14px"><b> | pasindu | prabuddha | sandali| sandun | sathya</b></td>
    </tr>
    <td colspan="8"></td>
</table>
<hr>

<!--End footer -->
</body>
</html>