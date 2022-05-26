<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
	<link href= "css/index1.css" rel = "stylesheet" type = "text/css">
	<link rel="stylesheet" type="text/css" href="css/login1.css">

    <header>
        <div class="container2">
          <div id="branding">
           <h1><span class ="highlight">Learning</span>Management</h1>
          </div>
        </div>
        <nav>
          <ul>
            <li><a href="Home.jsp">Home</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            <li class="current"><a href="login.jsp">Login</a></li>
            <li><a href="career.jsp">Teachers</a></li>
            <li><a href="career.jsp">Career</a></li>
            
          </ul>
        </nav>
 
      </header>	
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  position:center;
}

button {
  background-color: #3399ff;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}


.imgcontainer {
  text-align: center;
  margin: 500px 100px 12px 110px;
}



.container {
  padding:200px 100px 100px 100px;
  margin: 0px 10px 500px 100px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}

body{
	min-height:100vh;
}

.sticky-footer{
	position:stickey;
	top:100%

}
</style>
</head>
<body>

      
 <br><br><br>     
<br><br><br>
<br><br><br>
  <div class="container">

  	<form class="modal-content animate" action="login" method="post">
   <br>
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uName" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="passwd" required>
        
      <button type="submit">Login</button>
     
 

    
  </form>
  </div>
</div>





 <footer class="sticky-footer">
               <ul class="breadcrumb">
  <li><a href="terms.jsp">Terms and Conditions</a></li>
  <li><a href="faq.jsp">FAQ</a></li>
  <li><a href="career.jsp">Careers</a></li>
</ul>
         
                   <ul class="breadcrumb2">
                   <u class="foll">Follow us on:</u>
  <li><a href="http://www.facebook.com" target="_blank">Facebook</a></li>
  <li><a href="http://www.twitter.com" target="_blank">Twitter</a></li>
  <li><a href="https://www.instagram.com" target="_blank">Instagram</a></li>
</ul>
         
			<p>
				LMS, Copyright &copy; 2022
			</p>

		</footer>
    
</body>
</html>