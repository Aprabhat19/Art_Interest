<?php include("/includes/connection.php");
include("includes/head.php");
 ?>

<!DOCTYPE html>

 <html>
 <head>
</head>
 <style type="text/css">

         .sign {
          font-size: 30px;
          font-family: "Yu Gothic UI Light";
          color: #2a8048;
          position: absolute;
          left: 675px;
          top: 300px;
          width: 215px;
          height: 35px;

        }
        .in{
          font-size: 30px;
         font-family: "Yu Gothic UI Light";
          color: #fff;
          position: absolute;
           left: 740px;
          top: 300px;
          width: 215px;
          height: 35px;

        }

        /* Do this in Create Account Form !

        select {
            border-radius: 8px;
            padding: 10px;
           font-size: 25px;
           box-shadow: 1px 1.732px 5px 0px rgb( 55, 52, 52 );
          border: 2px solid steelblue;
          background-color: white;
          position: absolute;
          left: 423px;
          top: 260px;
          width: 350px;
          height: 60px;
        }*/

        .userbar, .passwdbar{
            border-radius: 5px;
           box-shadow: 1px 1.732px 5px 0px rgb( 55, 52, 52 );
           border: 1.5px solid rgb(33,33,33);
          background-color: white;
          position: absolute;
          left: 70px;
          width: 225px;
          height: 30px;
        }
        .userbar{

            top:1px;
        }
        .passwdbar{
            top:-3px;
            
        }

        .user{

          font-size: 20px;
          font-family: "Yu Gothic UI Light";
          color: #2a8048;
          position: absolute;
          left: 562px;
          top:385px;
          width: 215px;
          height: 35px;

        }
         .name{

            font-size: 20px;
            font-family: "Yu Gothic UI Light";
            color: #f2f2f2;
            position: absolute;
            left: 602px;
            top: 385px;
            width: 215px;
            height: 35px;

        }

         .pass{
            font-size: 20px;
            font-family: "Yu Gothic UI Light";
            color: #2a8048;
            position: absolute;
            left: 568px;
          top: 425px;
          width: 215px;
          height: 35px;

        }
         .word{

            font-size: 20px;
            font-family: "Yu Gothic UI Light";
              color: #f2f2f2;
              position: absolute;
              left: 604px;
              top: 425px;
            width: 215px;
            height: 35px;

        }

        .loginbar{
            cursor: pointer;
            border-radius: 8px;
           box-shadow: 1px 1.732px 5px 0px rgb( 55, 52, 52 );
          background-color:#2a8048;
          
          font-family: "Yu Gothic UI Light";
          color:#f2f2f2;
          border:1px;
          font-weight: bold;
          font-size: 17px;
          position: absolute;
          left: 550px;
          top: 500px;
          width: 400px;
          height: 35px;
        }

        .create{
          cursor: pointer;
          margin-top: 30px;
          font-size: 17px;
          font-family: "Yu Gothic UI Light";
          font-weight: bold;
          text-align: center;
          color: rgb( 0, 0, 0 );
          position: absolute;
          left: 730px;
          top:516px;
          width: 215px;
          height: 35px;

        }
        #font{

          font-size: 96px;
          font-family: "Yu Gothic UI Light";
          color: rgb( 0, 0, 0);
          position: relative;
          left: -20px;
          top:520px;

        }
        .dont{
          font-size: 17px;
          font-family: "Yu Gothic UI Light";
          color: #f2f2f2;
          position:relative;
          left: 620px;
          top:350px;

        }

        .login-background{

          background: url(pictures/ninth.jpg.tiff) no-repeat fixed;
          background-size: cover;
          position: absolute;
          width: 1500px;
          height: 100%;
          z-index: 1;
        }
.topmargin{
  position: absolute;
  margin-top: 60px;
  margin-left: 20px;

}
        </style>
 <body>
  <div class="login-background">
   <div class="topmargin">
        <form action = "login.php" method="POST">
            <br><br><br><br><br><br><br><br><br><br>

            <h2 class="sign">Sign </h2>
            <h2 class="in">In </h2>

            <p class="user">User </p>
                        <p class="name"> name: <input class="userbar" type="text" id ="username"  placeholder= " Enter Username"  name="username"> <br><br></p>
            <p class="pass" >Pass </p>
                        <p class="word">  word: <input class="passwdbar" type="password" id="password"  placeholder= " Enter Password"  name="password"> <br><br></p>

                        <input class="loginbar" type="submit" name="submit" value="Log In">
            </form>

             <p class="dont">Don't have an account?</p>

             <a class ="create" href="create_account.php"> Click Here!</a>
      </div>
  </div>
</body>
</html>
