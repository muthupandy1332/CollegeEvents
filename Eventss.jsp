<html>
 <%@page import="java.util.*" %>
<link rel="stylesheet" href="css/bootstrap.min.css">
<head>
  <title>Limit Event</title>
  <Style>
body{
background-image:url("image/");
background-size:cover;

}
label{
color:green;
}
form{
margin-left:50px;
width:50%;
}
</Style>
  
</head>
<%String clg=session.getAttribute("clg").toString(); %>
<%String cmail=session.getAttribute("cmail").toString(); %>
<%String type=request.getParameter("name").toString(); %>
<body>
<center>
<h2><%=type.toUpperCase() %> EVENT</h2></center>
<form action="freeeventservlet" method="post" enctype="multipart/form-data"><br>
<h3 Style="color:red">
 <%=clg.toUpperCase() %> Event Application</h3>
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputCity">Date</label>
      <input type="date" name="tdate" class="form-control" id="inputCity" required>
    </div><br></div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Event Name</label>
      <input type="text" class="form-control" id="inputEmail4" name="eventname" placeholder="Event Name"  REQUIRED>
    </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">College Name</label>
      <input type="text" class="form-control" id="inputEmail4" name="colname" placeholder="Full Name" value="<%=clg %>" REQUIRED>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Email Address</label>
      <input type="email" class="form-control" id="inputPassword4" name="colemail"  value="<%=cmail%>" placeholder="Enter Email Address" required>
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="inputAddress" name="coladd" placeholder="Ex 1234 Main St">
  </div>
  <div class="form-row">
  <div class="form-group col-md-4">
    <label for="inputAddress">Category</label>
    <input type="text" class="form-control" id="inputAddress" name="cate" placeholder="paper presentation">
      </div>
  <div class="form-group col-md-4">
    <label for="inputAddress">Organiser</label>
    <input type="text" class="form-control" id="inputAddress" value="<%=cmail%>" name="organ" placeholder="Ex 1234 Main St">
  </div>
</div>
     <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputCity">Start Date</label>
      <input type="date" name="sdate" class="form-control" id="inputCity" required>
    </div>
     <div class="form-group col-md-4">
      <label for="inputCity">End Date</label>
      <input type="date" name="edate" class="form-control" id="inputCity" required>
    </div>
   
    <div class="form-group col-md-4">
      <label for="inputZip">Mobile Number</label>
      <input type="number" name="number" class="form-control" id="inputZip" required>
    </div>
 
  
         </div>
         <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputZip">City</label>
      <input type="text" name="city" class="form-control" id="inputZip" required>
    </div>
 <div class="form-group col-md-4">
      <label for="inputZip">State</label>
      <input type="text" name="state" class="form-control" id="inputZip" required>
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Description</label>
    <textarea class="form-control" id="inputAddress" name="descri" style=" ""></textarea>
  </div>
   <!--  <h3>Compliant Location And Type of Compliant </h3> -->
    <div class="form-group col-md-12">
  <label for="inputZip"><h3 style="color:red;">Events:</h3></label><br>
   <label for="inputZip">Event Type</label><br>
        <input type="text" name="etype" placeholder="" value="<%=type%>" class="form-control" id="inputCity" required><br>
  
    <div class="form-row">
    <div class="form-group col-md-3">
          <label for="inputZip">Technical</label><br>
           
                      <select class="form-control" name="event" placeholder="">
                      <option value="None">None</option>
                        <option value=" Paper presentation"> Paper presentation</option>
                        <option value=" Project presentation"> Project presentation</option>
                        <option value="CAD modelling">CAD modelling</option>
                        <option value="Fixing auto parts">Fixing auto parts</option>
                                        </select>
                         </div>
                         
                          <div class="form-group col-md-3">
                         <label for="inputZip">Non-Technical</label>
                         
                         <select class="form-control" name="event" placeholder="">
                          <option value="None">None</option>
                        <option value="Water Rocketry">Water Rocketry</option>
                        <option value="Photography">Photography</option>
                         <option value="connection">connection</option>
                        <option value="Sight on Site">Sight on Site</option>
                        
                        
                      </select>
                        </div>
         </div>
         </div>
  


  <div class="form-group col-md-3">
    <label for="inputAddress">Departments</label>
<select name="department" class="form-control"  placeholder="" >
  <option value="CSE">CSE</option>
  <option value="EEE">EEE</option>
  <option value="IT ">IT  </option>
  <option value="ECE">ECE</option>
   <option value="Instrumentation">Instrumentation</option>
    <option value="MECH">MECH</option>
     <option value="Civil">Civil</option>
      <option value="Aeronautical">Aeronautical</option>
       <option value="Aerospace">Aerospace</option>
       <option value="Marine">Marine</option>
       <option value="Automobile">Automobile</option>

</select>  </div>
  
  <div class="form-row">
    
      <label for="inputCity">Contact Details:</label><br>     	
       <div class="form-group col-md-4">
      <input type="text" name="name1" placeholder="Person1" class="form-control" id="inputCity" required><br>
      <input type="number" name="number1" placeholder="Number1" class="form-control" id="inputCity" required>
      </div>
       <div class="form-group col-md-4">
      <input type="text" name="name2" placeholder="Person2" class="form-control" id="inputCity" required><br>
      <input type="number" name="number2" placeholder="Number2" class="form-control" id="inputCity" required>
    </div>
    </div>
    </div>
     <div class="form-row">
    <div class="form-group col-md-3">
      <label for="inputCity">Last Date for Registration</label>
      <input type="date" name="ldr" class="form-control" id="inputCity" required>
    </div>
  <div class="form-group col-md-3">
      <label for="inputCity">Registration Fees</label>
      <input type="amount" name="regfee" class="form-control" value="Free" id="inputCity" required>
    </div>
    </div>
    <div class="form-group col-md-3">
      <label for="inputCity">Limited Token</label>
      <input type="amount" name="regfee" class="form-control" placeholder="Enter Limited Token " sid="inputCity" required>
    </div>

 
        <div class="form-group col-md-3">
          <label for="card_photo"  style="color:#fff;">Upload Food photo:</label>
          <input type="file" class="form-control" placeholder="Enter password" name="photo" accept="image/*" onchange="preview_image(event)" required>
        </div>
        <div class="form-group col-md-3">
          <label  style="color:#fff;">Your selected File:</label><br>
          <img src="" id="output_image"/ height= "200px">
        </div>
<center><br>
  <button type="submit" class="btn btn-primary">SUBMIT </button>
  </center>
</form>
</body>
<script type='text/javascript'>
  function preview_image(event)
  {
    var reader = new FileReader();
    reader.onload = function()
    {
      var output = document.getElementById('output_image');
      output.src = reader.result;
    }
    reader.readAsDataURL(event.target.files[0]);
  }
  function multiply(){
	  
	     var ans= (document.getElementById('ppp').value)*(document.getElementById('qty').value)
	     document.getElementById('tot').value=ans;
	     }
  </script>
</html>