<?php 

    session_start();

    define('SITEURL', 'http://localhost/onlinefood-order/');
    define('LOCALHOST', 'localhost');
    define('DB_USERNAME', 'root');
    define('DB_PASSWORD', '');
    define('DB_NAME', 'onlinefoodorder');
    $conn=mysqli_connect(LOCALHOST,DB_USERNAME,DB_PASSWORD,DB_NAME);
    if(!$conn){
        die("Connection Failed: ".mysqli_connect_error());
    }
    ?>
<script src="prevent.js"></script>