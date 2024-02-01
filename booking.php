<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Booking Status</title>
<style>
    /* Add some padding and text-align to the body to ensure no overlaps with the header or footer */
    body {
        padding: 20px;
        text-align: center; /* Ensures text is centered in the available space */
        background-color: #f7f7f7; /* A light grey background */
    }

    h1 {
        font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; /* A nice, readable font */
        color: #d35400; /* A warm color for your message */
        font-size: 40px; /* Large text size */
        font-weight: bold; /* Make it bold */
        margin-top: 50px; /* Add some space on the top */
        margin-bottom: 50px; /* And also on the bottom */
        text-shadow: 2px 2px 4px #aaaaaa; /* A subtle shadow to make the text pop a little */
    }
</style>

</head>
<body>
<?php require('inc/links.php');?>


<?php require('inc/header.php'); ?>
<?php

echo '<h1>Sorry, booking is currently not available. Thank you for your patience.</h1>';
?>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<?php require('inc/footer.php'); ?>
</body>
</html>
