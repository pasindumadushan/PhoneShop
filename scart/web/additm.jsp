<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>phone Form</title>
  <link rel="stylesheet" href="css/register/style.css">
  
  
</head>

<body>
    <%if(session.getAttribute("admin")==null){
            
         //request.getRequestDispatcher("access_denied.jsp").forward(request, response);
   
        }%>
  <div class="container">
      <section class="register">
  <% if(request.getAttribute("msgs")!=null){
   out.print(request.getAttribute("msgs")) ; }%>  
    
 <h1>Add the phone </h1>
      
      <br>
      <form method="post" action="Additm">
      <div>
      <h3>Phone Details</h3>
      <input type="text" name="fN" value="" placeholder="phone Name *">
      <input type="text" name="pp" value="" placeholder="Phone Price *">
      <input type="text" name="pim" value="" placeholder="Phone Image*">
      <input type="text" name="pbrnd" value="" placeholder="Phone Brand*">
      
      
      </div>
   
         
   <input type="submit" name="add"  value="ADD" >
       
      
      </form>
      </section>
    
  </div>

</body>
</html>