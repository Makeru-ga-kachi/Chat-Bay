<?php 
session_start();
require_once('include/functions.php'); 
if(isset($_GET['id']) && getRoom($_GET['id'],'id') > 0){

    if(isset($_POST['submit']) && !empty($_POST['message'])){
        if(strlen($_POST['message']) > 250){
            header("location:room.php?id=". $_GET['id'] ."&err=TLarge", true, 301);
        }else{
            $msg = cleanText($_POST['message']);
            $room = $_GET['id'];
            if(isset($_SESSION['uid'])){
                $sender = $_SESSION['uid'];
            }else{
                $sender = 'Anonymous';
            }
            sendMsg($room,$msg,$sender);
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo getRoom($_GET['id'],'room_name'); ?> | Anonymous Chat Rooms</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/room.css">
</head>
<body>
    <!--bodyGrid-->
    <div>
        <div>
            <h1 class="head_title"><?php echo getRoom($_GET['id'],'room_name'); ?></h1>
            <?php if(isset($_GET['err']) && $_GET['err'] == 'TLarge'){echo '<p class="error_message">Your Message is too long. 250 char max</p>';} ?>
            <a href="index.php">Home</a>
            <div class="messages" id="messagesBody">
                <?php
                    foreach(getMessages($_GET['id']) as $row){
                        echo '<div><span class="username">@'. $row['sender'] .'</span><p class="single_message">'. $row['message'] .'</p></div>';
                    }
                ?>
            </div>
            <div class="write">
                <?php if(isset($_GET['err'])){ ?>
                    <form action="room.php?id=<?php echo $_GET['id']; ?>" method="post">
                <?php }else{ ?> 
                    <form action="" method="post">
                <?php }?>
                    <textarea class="message_box" name="message" id="message" cols="30" rows="2" placeholder="Enter Message"></textarea>
                    <button type="submit" name="submit" class="submit">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <script>
        var messageBody = document.querySelector('#messagesBody');
        messagesBody.scrollTop = messagesBody.scrollHeight - messagesBody.clientHeight;
    </script>
</body>
</html>
<?php }else{header("location:index.php", true, 301);} ?>