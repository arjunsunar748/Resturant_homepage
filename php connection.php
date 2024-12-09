<?php
include "db.php";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['text'];
    $email = $_POST['email'];
    $phone = $_POST['tel'];
    $date = $_POST['date'];
    $time = $_POST['time'];
    $people = $_POST['people'];

    $sql = "INSERT INTO reservation (text, email, tel, date, time, people) VALUES ('$name', '$email', '$phone', '$date', '$time', '$people')";
    if ($conn->query($sql) === TRUE) {
        echo "Booking successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
header('Location: first.html');
?>