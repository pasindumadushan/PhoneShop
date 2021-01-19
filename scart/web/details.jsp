<%@page import="srch.DBconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="srch.Srch"%>

<!DOCTYPE html>
<html>
    <head>
        <% Srch sr=new Srch();
        
                    ResultSet rs=sr.phone();
                   
                    while(rs.next()){
                        Srch sr2=new Srch(rs.getInt("id"));
                        
                    
                   
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/btn.css" rel="stylesheet" type="text/css">
        
        <title><%= rs.getString("name")%></title>
        <script>
            window.onunload = refreshParent;
            function refreshParent() {
                window.opener.location.reload();
            }
        </script>
    </head>
    <body>
        
        <div style="height: 100px;width: 300px; margin-right:80px; margin-left: 40px; position: absolute">
            
            <table style="font-family: verdana,helvetica,arial,sans-serif;font-size: 20px">
                 
                 <tr>
                     <td align="center"> 
                         
                          <br>
                          <br>
                          <br>
                          <%=rs.getString("name")%>  
                          <br>
                          <br>
                         <img src="images/mobiles/<%= rs.getString("imagName")%>"alt=""/> 
                         <br>
                        
            Rs. <%= rs.getString("price")%>.00
                     
            <br>
            <form action="Cart" method="Post">
             <button class="sortBtn" type="submit" name="id" value="<%= rs.getInt("id")%>" onClick="window.alert('Item added to the shopping cart')">
        	Add to cart</button>
            </form>
                <br>
                <br>
                     
                         Rating: 
            <%= sr2.getCr() %>/5.00
           
             <%if(session.getAttribute("user")!=null){
                %>
            <form method="POST" action="Search">
            <br>
            <input type="radio" name="rate" value="1" />
            <input type="radio" name="rate" value="2" />
            <input type="radio" name="rate" value="3" />
            <input type="radio" name="rate" value="4" />
            <input type="radio" name="rate" value="5" checked="checked" />
           
            
           
            <br>
            <input type="hidden" name="pId" value="<%= rs.getInt("id")%>"/>
            <input class="sortBtn" type="submit" value="Rate" onClick="window.alert('You have rated this phone successfully')"/>
               
                     
                     </form>
                     <% }else
                     out.print("<br><span style='font-size: 10px;font-weight: normal;'>*You have to login to rate this</span>");
                     
                     %>
                     </td>
                     
                     
                     
                     
                 </tr>
             </table>
       
            
            
        </div>
        <div style="position: relative;float: right;">
        
        
        <table border='1' style="border-collapse: collapse;
font-family: verdana,helvetica,arial,sans-serif">
           
            <tr style="border: 1px solid #98bf21;" height="60" >
                <td  width="120" >
                    Band
                </td>
                <td  width="500" >
                    
                    <%=rs.getString("band")%>
                   
                </td>
            </tr>
            <tr style="border: 1px solid #98bf21;" height="60" >
                <td  width="120" >
                    Announced
                </td>
                <td  width="500" >
                   
                    <%=rs.getString("annc")%>
                    
                   
                </td>
            </tr>
            <tr style="border: 1px solid #98bf21;" height="60" >
                <td  width="120" >
                    Dimensions
                </td>
                <td  width="500" >
                   
                    <%=rs.getString("die")%>
                   
                </td>
            </tr>
            <tr style="border: 1px solid #98bf21;" height="60" >
                <td  width="120" >
                    SIM
                </td>
                <td  width="500" >
                   
                    <%=rs.getString("sim")%>
                    
                </td>
            </tr>
            <tr style="border: 1px solid #98bf21;" height="60" >
                <td  width="120" >
                    Screen
                </td>
                <td  width="500" >
                   
                    <%=rs.getString("scrn")%>
                   
                </td>
            </tr>
            <tr style="border: 1px solid #98bf21;" height="60" >
                <td  width="120" >
                    OS
                </td>
                <td  width="500" >
                  
                    <%=rs.getString("os")%>
                   
                </td>
            </tr>
            <tr style="border: 1px solid #98bf21;" height="60" >
                <td  width="120" >
                    Memory
                </td>
                <td  width="500" >
                   
                    <%=rs.getString("memry")%>
                    
                </td>
            </tr>
            <tr style="border: 1px solid #98bf21;" height="60" >
                <td  width="120" >
                    Camera
                </td>
                <td  width="500" >
                  
                    <%=rs.getString("cam")%>
                   
                </td>
            </tr>
            <tr style="border: 1px solid #98bf21;" height="60" >
                <td  width="120" >
                    Battery
                </td>
                <td  width="500" >
                   
                    <%=rs.getString("btry")%>
                   
                </td>
            </tr>
            
            
        </table>
     <%}%> 
        </div>
        <% 
                   
                    DBconnection.getConnectiontoDB().close();
        %>
    </body>
    
</html>
