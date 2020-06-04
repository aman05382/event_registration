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

// Variables
$fname = $_SESSION['fname'];
$lname = $_SESSION['lname'];
$email = $_SESSION['email'];
$phone = $_SESSION['phone'];
$id_card = $_SESSION['id_card'];
$registration_type  = $_SESSION['registration_type'];
$no_of_tickets = $_SESSION['no_of_tickets'];
$registration_id = $_SESSION['registration_id'];


if (isset($_POST['submit'])) {

    $event = "INSERT INTO `participants`(`REGISTRATION-ID`, `FIRST-NAME`, `LAST-NAME`, `EMAIL`, `PHONE`, `ID-CARD`, `REGISTRATION-TYPE`, `NO_OF_TICKETS`) VALUES ('$registration_id','$fname', '$lname', '$email', '$phone', '$id_card', '$registration_type', '$no_of_tickets')";
        $register = mysqli_query($conn, $event);
        if ($register) {
            echo "<script>alert('Successfully entered details');</script>";
            // header('location:index.html');
        } else {
            echo mysqli_error($conn);
        }
}

?>