<?php

//Connect to mysql
$conn = mysqli_connect('localhost', 'root', '', 'shoutit');

//test connection
if(mysqli_connect_errno()){
    echo 'Failed to connect to MySQL: ' . mysqli_connect_error();
    // die('Failed to connect to MySQL: ' . mysqli_connect_error());
}

?>