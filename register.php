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
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$id_card = $_POST['id_card'];
$registration_type  = $_POST['registration_type'];
$no_of_tickets = $_POST['no_of_tickets'];

// if (isset($_POST['submit'])) {

//     $event = "INSERT INTO `participants`(`FIRST-NAME`, `LAST-NAME`, `EMAIL`, `PHONE`, `ID-CARD`, `REGISTRATION-TYPE`, `NO_OF_TICKETS`) VALUES ('$fname', '$lname', '$email', '$phone', '$id_card', '$registration_type', '$no_of_tickets')";
//         $register = mysqli_query($conn, $event);
//         if ($register) {
//             echo "<script>alert('Successfully entered details');</script>";
//             header('location:index.html');
//         } else {
//             echo mysqli_error($conn);
//         }
// }
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registration Form</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
    <div class="container p-4 p-sm-5">

        <div class="container rounded bg-light p-lg-5 p-3">

            <h4 class="h2 text-center mt-3 mb-5">Review Form</h4>

            <form class="needs-validation" novalidate action="register.php" method="POST" onSubmit="return confirm('This is the final submit') ">

                <!-- Name -->
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label for="first_name">First Name</label>
                        <input type="text" class="form-control" value="<?php echo $fname ?>" readonly>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label for="last_name">Last Name</label>
                        <input type="text" class="form-control" value="<?php echo $lname ?>" readonly>
                    </div>
                </div>

                <!-- Contact -->
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label for="email">E-mail</label>
                        <input type="email" class="form-control" value="<?php echo $email ?>" readonly>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="phone_no">Phone No.</label>
                        <input type="tel" class="form-control" value="<?php echo $phone ?>" readonly>
                    </div>
                </div>

                <!-- Registration Type -->
                <div class="form-group">
                    <div>
                        <label for="Registration_type">Registration Type</label>
                        <input type="text" class="form-control" value="<?php echo $registration_type ?>" readonly>
                    </div>
                </div>

                <!-- Number Of Tickets -->
                <div class="form-group">

                    <div>
                        <label for="no_of_tickets">Number Of Tickets</label>
                        <input type="text" class="form-control" value="<?php echo $no_of_tickets ?>" id="no_of_tickets" name="no_of_tickets" readonly>
                    </div>
                </div>


                <button class="col-12 btn btn-primary my-3" type="submit" value="sub" name="submit">Submit</button>
            </form>

        </div>
    </div>




    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function() {
            'use strict';
            window.addEventListener('load', function() {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
    </script>

</body>

</html>