<?php 
    //get all rooms in the database 
    function getAllRooms(){
        require('connection/conn.php'); 
        $stmt = $conn->prepare("SELECT * FROM `rooms`");
        $stmt->execute();
        return $stmt->fetchAll();
    }
    //gets a single room and it's info
    function getRoom($id,$field){
        require('connection/conn.php'); 
        $stmt = $conn->prepare("SELECT * FROM `rooms` WHERE `id` = :id");
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $results = $stmt->fetch(PDO::FETCH_ASSOC);
        return $results[$field];
    }
    //get the messages in a single room
    function getMessages($id){
        require('connection/conn.php'); 
        $stmt = $conn->prepare("SELECT * FROM `chat_messages` WHERE `room_id` = :id");
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        return $stmt->fetchAll();
    }
    //cleans the text from html tags etc
    function cleanText($data){
        $data = strip_tags($data);
        $data = trim($data);
        return $data;
    }
    //sends a message to a single room
    function sendMsg($room,$msg,$sender){
        require('connection/conn.php'); 
        $stmt = $conn->prepare("INSERT INTO `chat messages`(`room_id`, `message`, `sender`) VALUES (:room, :msg, :sender)"); //query
        $stmt->bindParam(':room', $room);
        $stmt->bindParam(':msg', $msg);
        $stmt->bindParam(':sender', $sender);
        $stmt->execute();
        return $stmt; 
    }

?>