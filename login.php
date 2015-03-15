<html>
  <head>
    <meta charset="UTF-8">  
    <title>TrackMovies-keep track of movies you saw</title>  
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.css">
    <link rel='shortcut icon' href='/images/logo.PNG'>
    <link rel="stylesheet" href="css/temp.css">
    <link rel="stylesheet" href="css/login_style.css">
    <script src = 'js/script.js'></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  </head>

  <body style="background-image:url(images/minions.jpg);background-size: cover;  min-width: 1000px;" >

    
    <form name = 'login-form' class = 'login-form' id= 'login-form' method='POST' >
      <input type='hidden' name='type'  value='login'/>
      <input class="login-field" name="username" placeholder="Enter your username" id="login-name" type="text"  maxlength="10" required/>
      <input class="login-field" name="password" placeholder="Password" type="password" maxlength="15" required />
      <input type="submit" id ="login-button" value="Login" class="login-button" />
    </form>  
    



    <form name = 'signup-form' method='POST' id = 'signup-form' class="sign-up"  style="margin-top: 100px; margin-left: 70%;" >
      <h1 class="sign-up-title">Sign up in seconds !</h1>
      <input type='hidden' name='type'  value='signup'>
      <input type="text" class="sign-up-input" placeholder="Enter your First name" name='firstName' autofocus  maxlength="15" required/>
      <input type="text" class="sign-up-input" placeholder="Enter your Last name" name='lastName' maxlength="10" required/>
      <input type="text" class="sign-up-input" placeholder="Choose an username" name='username' maxlength="10" required/>
      <input type="password" class="sign-up-input" placeholder="Choose a password" name='password' maxlength="15" required/> 
      <input type="submit" id = "signup-button" value="Sign me up!" class="sign-up-button" >
    </form>

    <div class = 'login-banner'>
      <div style="text-align:center;color:A2FF29;font-size:49px;margin-bottom:30px;">
        <img src='images/logo.png' height="36" width='45'> &nbsp TrackMovies <br>
      </div>     
      <div style="text-align:center;color:white;font-size:26px">
        A perfect place for a movie buff minion to organize, share, and keep track of their favorite movies.
      </div>
    </div>

  <script>
    $("#login-button").click(function() {
      var flag = validateLogin();
      if(flag != false){
        $("#login-button").innerHTML = 'Logging..';
        var url = "authenticate.php";

        $.ajax({
               type: "POST",
               url: url,
               data: $("#login-form").serialize(), // serializes the form's elements.
               success: function(response){
                  response = JSON.parse(response);
                  if(response.status == 'pass'){
                    location.reload();

                  }
                  else{
                    $("#login-button").innerHTML = 'Login';
                    alert(response.message);
                  }
                   
               }
        });
        return false; // avoid to execute the actual submit of the form.
      }
    });

    $("#signup-button").click(function() {
      var flag = validateSignUp();
      if(flag != false){
        $("#signup-button").innerHTML = 'Signing you up..';
        var url = "authenticate.php";
        $.ajax({
               type: "POST",
               url: url,
               data: $("#signup-form").serialize(), // serializes the form's elements.
               success: function(response){
                  response = JSON.parse(response);
                  if(response.status == 'pass'){
                      //alert(response.status);
                      location.reload();
                  }
                  else{
                    $("#signup-button").innerHTML = 'Sign me up!';
                    alert(response.message);
                  }
               }
        });
        return false; // avoid to execute the actual submit of the form.
      }
    });

  </script>
    


  </body>

</html>