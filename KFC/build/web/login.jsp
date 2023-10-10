<%-- 
    Document   : login
    Created on : Sep 11, 2023, 4:00:38 PM
    Author     : HAU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="css/stylelogin.css">
         <link href="bootstrap/bootstrap.min.css" rel="stylesheet">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <title>JSP Page</title>
    </head>
    <body>
       <div id="header">
        <div class="container-header">
                <div class="header-img col-md-3">
                    <img src="img/logo.jpg" alt="">
                </div>

                <div id="show" class="header-select col-md-9">
                    <ul>
                        <li> <a href="guest.jsp">Home</a></li>
                        <li> <a href="">Menu</a></li>
                        <li> <a href="">Sale</a></li>
                        <li> <a href="">Services</a></li>
                        <li> <a href="">Contact us</a></li>
                        <li> <a href="login.jsp">Login</a></li>
                    </ul>
                </div>
        </div>
           <div id="content">
               <div class="row">
                   <div class="content-img ">
                   <img src="img/contentbanner.jpg" alt="alt"/>
               </div>
               <form action="LoginCustomer" method="POST" class="form" id="form-1">
      <h3 class="heading">LOGIN</h3>
      <div class="spacer"></div>
      <div class="form-group">
        <label for="username" class="form-label">Username</label>
        <input id="username" name="username" type="text" placeholder="" class="form-control">
        <span class="form-message" style="color:red;">${tbTk}</span>
      </div>
      <div class="form-group">
        <label for="password" class="form-label">Password</label>
        <input id="password" name="password" type="password" placeholder="" class="form-control">
        <span class="form-message" style="color:red;">${tbPass}</span>
      </div>
    
      <button class="form-submit">Login</button>
      <span class="form-message" style="color:red;">${tbsubmit}</span>
     
    </form>
      
           <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/FastFoodStore/LoginGoogle&response_type=code
		   &client_id=231664848378-c2vupriqqpajggj6sj9b4dmq4jknu72g.apps.googleusercontent.com&approval_prompt=force">Login With Google</a>
      <a href="forgotPassword.jsp" target="_blank">Forgot password</a>
      
       </div>
     
          <div class="form-signup">
          <p>Haven’t got an account?</p>
          <button class="signup" name="submit" value="signup" > <a href="register.jsp" class="signupbtn">Sign Up</a></button>
      </div>
     
       
           </div>
             <footer id="footer">
            <div class="container-foter">
                <div class="footer-body">
                    <div class="footer-body-contact">
                        <h4>Contact Us</h4>
                        <ul>
                            <li><a href="#"><i class="fa-sharp fa-solid fa-location-dot" style="color: #FDC800; margin-right: 5px;"></i>Estate Business, #32841 block, #221DRS 
                                Real estate business building, UK.
                            </a>
                            </li>
                            <li>
                                <a href="#"><i class="fa-sharp fa-solid fa-phone" style="color: #FDC800; margin-right: 5px;"></i> +(21)-255-999-8888</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa-regular fa-envelope-open" style="color: #FDC800; margin-right: 5px;"></i>corporate-mail@support.com</a>
                            </li>
                        </ul>
                    </div>

                    <div class="footer-body-featured">
                        <h4>Featured Links</h4>
                        <ul>
                            <li> <a href="">Graduation</a> </li>
                            <li> <a href="">Admissions</a> </li>
                            <li> <a href="">Book Store</a> </li>
                            <li> <a href="">International</a> </li>
                            <li> <a href="">Courses</a> </li>
                        </ul>
                    </div>

                    <div class="footer-body-quick">
                        <h4>Quick Links</h4>
                        <ul>
                            <li> <a href="">Home</a> </li>
                            <li> <a href="">About</a> </li>
                            <li> <a href="">Services</a> </li>
                            <li> <a href="">Blog</a> </li>
                            <li> <a href="">Contact</a> </li>
                        </ul>
                    </div>
                </div>
                <div class="footer-end">
                    <p>2020 Mastery. All rights reserved | Designed by <a href="" style="color: #ccc;">W3layouts</a></p>
                </div>
            </div>
        </footer>
    </body>
</html>