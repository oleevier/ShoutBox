<?php
include 'database.php';
// var_dump($_POST);

//check if form submited
if(isset($_POST['submit'])){
    $user = mysqli_real_escape_string($conn, $_POST['user']);
    $message = mysqli_real_escape_string($conn, $_POST['message']);
    
    //set timezone
    date_default_timezone_set('Europe/Warsaw');
    $time = date('h:i:s a',time());

    //validate inputs
    if (!isset($user) || $user == '' || !isset($message) || $message == '') {
        $error = "Please fill in your name and a message";
        header("Location: index.php?error=".urlencode($error));
        exit();
    } else {
        $query = "INSERT INTO shouts (user, message, time) VALUES ('$user', '$message', '$time')";
        
        if(!mysqli_query($conn, $query)){
            die('Error: ' . mysqli_error($conn));
        } else {
            header("Location: index.php");
            exit();
        }
    }
}

?>