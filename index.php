<?php
require_once 'config-paypal.php';
?>
<!DOCTYPE html>
<html lang="vi">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>MyShop</title>

  <!-- start css -->
  <link rel="stylesheet" href="./style/css/helper.css" />
  <link rel="stylesheet" href="./style/css/layout.css" />
  <link rel="stylesheet" href="./style/css/main.css" />
  <link rel="stylesheet" href="./style/css/responsive.css" />
  <link rel="stylesheet" href="./style/css/login.css">
  <link rel="stylesheet" href="./style/css/toast.css">
  <!-- end css -->

  <!-- start google font -->

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@300;400;600&display=swap" rel="stylesheet">

 
  <!-- end google font -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="./style/js/toast_message.js"></script>
  <script src="./style/js/message.js"></script>
  <script src="./style/js/validator.js"></script>
 
</head>

<body>
  <div id="wrapper">
    <?php
    session_start();
    include('quantri/format/format.php');
    include('quantri/config/config.php');
    include("./web/main.php");
    ?>
  </div>
  <div id="toast">
  </div>
  <script src="./style/js/main.js"></script>
  <script src="./style/js/navigation.js"></script>
  <script src="./style/js/select-number.js"></script>
  <script src="./style/js/scrollsnap.js"></script>
  <script src="./style/js/payment.js"></script>
  <script src="./style/js/inputRange.js"></script>
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
  <script src="https://kit.fontawesome.com/e63ed424f0.js" crossorigin="anonymous"></script>
  <!-- Messenger Plugin chat Code -->
  <div id="fb-root"></div>
 
  <!-- Your Plugin chat code -->
  <div id="fb-customer-chat" class="fb-customerchat">
  </div>

  <script>
    var chatbox = document.getElementById('fb-customer-chat');
    chatbox.setAttribute("page_id", "101046545371764");
    chatbox.setAttribute("attribution", "biz_inbox");
  </script>


</body>

</html>