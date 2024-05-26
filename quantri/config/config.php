<?php
    // local
    $mysqli = new mysqli("localhost","root","","mypham");
 
    // Check connection
    if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli->connect_error;
    exit();
}
