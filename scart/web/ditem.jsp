<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Item</title>
        
        
       
    </head>
    <body>
        
        <%if(session.getAttribute("admin")==null){
            
        // request.getRequestDispatcher("access_denied.jsp").forward(request, response);
   
        }%>
        
        <table border="1" align="center" style="border-collapse: collapse;
font-family: verdana,helvetica,arial,sans-serif; margin-top: 20%">
            
           <form action="Admin" method="post">
            
                <tr>
                    <td colspan="3" align="center" height="24px" style="border: 1px solid #98bf21;">Please enter the Item ID to delete..</td>
                
                    
                </tr>
                <tr>
                    <td align="center" height="24px" width="280px" style="border: 1px solid #98bf21;">Item ID: <input type="text" name="id" value="" /></td>
                    <td align="center" height="24px" style="border: 1px solid #98bf21;"><button type="submit" name="dltitm" value="dltitm" onClick="confirm('Do you want to delete this item ?')">
        	Submit</button>
                        
                       </td>
                </tr>
                <% if(request.getAttribute("dmsg")!=null){%>
                <tr>
                    <td colspan="3" align="center" height="24px" style="border: 1px solid #98bf21;"><%=request.getAttribute("dmsg") %></td>
                    
                </tr>
                <%}%>
          </form>   
        </table>

    </body>
</html>
