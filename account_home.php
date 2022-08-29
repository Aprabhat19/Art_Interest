<?php
session_start();

$user_type = $_SESSION['user_type'];
if($user_type == 'Artist'){
  include("account.php");

}
else if($user_type == 'Customer'){
  include("customer-account.php");

}
else if($user_type == 'Admin'){
  include("head_admin.php");

}
?>

<!DOCTYPE html>
<html>
<head>
    <title></title>
    <style type="text/css">
        .welc{
            position: absolute;
            top: 100px;
            width:100%;
            height: 89%;
        }


        .message1{
          font-size: 90px;
             position : relative;
             top :200px;
             right:-180px;

        }
        .message2{
          font-size: 45px;
             position : relative;
             top :170px;
             right:-200px;

        }

    </style>
</head>
<body>
    <img class="welc"src="pictures/modern_art_1.jpg">
</body>
<p class="message1">
WELCOME,</p>
<h1 class="message2">Discover,buy and sell art</h1>
</html>