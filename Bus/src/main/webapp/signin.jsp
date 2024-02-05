<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,700" rel="stylesheet">

    <!-- <link rel="stylesheet" type="text/css" href="./styles.css">-->

    <title>Sign In Page</title>
  </head>
  <body style="background:url('sign.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: 100% 100%;	font-family: 'Montserrat', sans-serif; text-rendering : optimizeLegibility; -webkit-font-smoothing : antialiased;">

    <div id="login-bg" class="container-fluid">

      <div class="bg-img" style="background-image: url(./bg-image.jpeg);background-size: cover;	min-width: 50%; vertical-align: top;padding: 0;margin-left: 0;height: 100%;background-color: #CAF0D3;display: inline-block;overflow: hidden;"></div>
      <div class="bg-color" style="	margin-left: -5px; min-width: 50%; vertical-align: top;padding: 0;margin-left: 0;height: 100%;background-color: #CAF0D3;display: inline-block;overflow: hidden;"></div>
    </div>

    <div class="container" id="login" style="padding-top: 3%;text-align: center;text-transform: uppercase; 	width: 100%;height: 500px;padding: 15px;padding-top: 30px;">
        <div class="row justify-content-center">
        <div class="col-lg-8">
          <div class="login">

            <h1 style="	margin-top: 2px;font-weight: bold;font-size: 60px;letter-spacing: 3px;">Sign In</h1>
            
                  <form action="bus" method="post" style="max-width: 420px;margin: 30px auto;">
                    <div class="form-group">
                      <input type="text" name='name'  required class="form-control" id="exampleInputEmail1"  placeholder="Enter UserName">
                    </div>
                    <div class="form-group">
                        <input type='text' name='mobno'  required class="form-control" id="exampleInputEmail1"  placeholder="Enter Mobile Number">
                      </div>
                    <div class="form-group">
                      <input type="password" name='pass'  required class="form-control" id="exampleInputPassword1" placeholder="Password" >
                    </div>
                    <div class="form-group">
                        <input input type='password' name='cpass'  required class="form-control" id="exampleInputPassword1" placeholder="Confirm Password" >
                      </div>

                      <div class="form-check">

                       <!-- <label>
                      <span></span> 
                     </label> -->
                      
                      
                      <!-- <label class="forgot-password"><a href="#">Forgot Password?<a></label> -->

                    </div>
                  
                    <br>
                    <button type='submit' name='submit' class="btn btn-lg btn-block btn-success" style="border-radius: 50px;text-transform: uppercase;font-weight: bold;letter-spacing: 2px;font-size: 20px;padding: 14px;background-color:#3b3734;">Sign in</button>
                  </form>

          </div>
        </div>
        </div>
    </div>


  </body>
</html>