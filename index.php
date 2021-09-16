<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat-Bay | Anonymous Chat Rooms</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/header.css">
</head>
<body>
    <?php 
    require_once('include/functions.php'); 
    require_once('include/header.php'); 
    ?>

    <!--bodyGrid-->
    <div class="">
        <div>
            <h1 class="head_title">Rooms</h1>
            <div class="grid_rooms">
            <?php 
                foreach(getAllRooms() as $row) {
                    echo '<a href="room.php?id='. $row['id'] .'"><div class="room_single">@'. $row['room_name'] .'</div></a>';
                }
            ?>
            </div>
        </div>
    </div>
</body>
</html>