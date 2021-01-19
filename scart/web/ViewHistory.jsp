<%@page import="srch.Hstr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>History</title>
    </head>
    <body>
  
        
         
       
        
        <% Hstr h=new Hstr(); %>
        
        <div style="position: relative;">  
            
            <center><table border='1' style="border-collapse: collapse;
                           font-family: verdana,helvetica,arial,sans-serif;"> <tr> 
                        <td align="left" height="24px" width="30px" style="border: 1px solid #98bf21;">Transaction ID</td>
                       
                        <td align="left" height="24px" style="border: 1px solid #98bf21;">Phone Name</td>
                        <td align="left" height="24px" style="border: 1px solid #98bf21;">Price</td>
                        <td align="left" height="24px" style="border: 1px solid #98bf21;">Date and time</td>
                    </tr>
                    <% for(int i=0;i<h.getSize()+1;i++ ){
                        if(i==4){%> 
                         <tr>
                <% }else{
                        while(h.getRs().next()){
                   %>
                    
                   <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=h.getRs().getString("id") %></td>
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=h.getRs().getString("pName") %></td>
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=h.getRs().getString("price") %></td>
                    <td align="left" height="24px" style="border: 1px solid #98bf21;"><%=h.getRs().getString("date") %></td>
                    
                    
                                  
                    
                         </tr> 
     <%}}}%> 
                </table>
            </center>
        </div>
        
        
        
        
        
    </body>
</html>
