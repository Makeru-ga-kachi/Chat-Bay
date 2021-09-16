<?php 
if(isset($_POST['enter_name']) && !empty($_POST['uid'])){
    $_SESSION['uid'] = cleanText($_POST['uid']);
    if(isset($_SESSION['uid'])){
        header("location:index.php", true, 301);
    }
}
?>
<header>
<div class="overlay">
    <h1>Anonymous Chat</h1>
    <h3> <?php echo 'Hello There '; if(isset($_SESSION['uid'])){ echo $_SESSION['uid']; } ?></h3>
    <form action="" method="post">
        <input name="uid" style="margin: auto; width: 200px;" type="name" class="w3-input w3-border" placeholder="Enter a Name">
        <button type="Submit" class="w3-button w3-red" name="enter_name">Submit</button>
    </form>
    <a href="clear.php">Clear My Data</a>
</div>
</header>