
<?php
//Connect to server.
$conn = mysqli_connect('localhost', 'root', '');
if (!$conn) {
    die("Server Connection Failed" . mysqli_error($conn));
}


//Connect to database.
$db = mysqli_select_db($conn, 'event');
if (!$db) {
    die("Database Connection Failed" . mysqli_error($db));
}

?>