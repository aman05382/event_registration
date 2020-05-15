<?php
session_start();

//Connect to server.
$conn = mysqli_connect('localhost', 'root');
if (!$conn) {
    die("Server Connection Failed" . mysqli_error($conn));
}


//Connect to database.
$db = mysqli_select_db($conn, 'event');
if (!$db) {
    die("Database Connection Failed" . mysqli_error($db));
}

if (isset($_POST['submit'])) {

    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $id_card = $_POST['id_card'];
    $registration_type  = $_POST['registration_type'];
    $no_of_tickets = $_POST['no_of_tickets'];


    $event = "INSERT INTO `participants`(`FIRST-NAME`, `LAST-NAME`, `EMAIL`, `PHONE`, `ID-CARD`, `REGISTRATION-TYPE`, `NO_OF_TICKETS`) VALUES ('$fname', '$lname', '$email', '$phone', '$id_card', '$registration_type', '$no_of_tickets')";
        $register = mysqli_query($conn, $event);
        if ($register) {
            echo "<script>alert('Successfully entered details');</script>";
            header('location:index.html');
        } else {
            echo mysqli_error($conn);
        }
}


    
?>