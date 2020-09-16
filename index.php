<?php
include 'database.php';

$query = "SELECT * FROM shouts ORDER BY id DESC";
$shouts = mysqli_query($conn, $query);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shout it!</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div id="container">
    <header>
        <h1>Shout It! Shoutbox</h1>
    </header>
    <div id="shouts">
        <ul>
            <?php 
                while($row = mysqli_fetch_array($shouts)){
                    echo '<li  class="shout"><span>' . $row['time']. ' - </span><strong>' . $row['user']. '</strong>: '. $row['message'] . '</li>';
                }
            ?>
        </ul>
    </div>
    <div id="input">
        <?php
            if(isset($_GET['error']))
            {
                echo "<div class='error'>" . $_GET['error']. "</div>";
            }
        ?>
        <form action="process.php" method="post">
            <input type="text" name="user" placeholder="Enter your name" />
            <input type="text" name="message" placeholder="Enter your message" />
            <br />
            <button type="sumbit" name="submit" class="shout-btn">Shout It Out</button>
        </form>
    </div>
</div>
    
</body>
</html>