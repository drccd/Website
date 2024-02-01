<?php
require('../admin/inc/db_config.php');
session_start();

if (isset($_POST['register'])) {
  // Sanitize user input to prevent SQL injection
  $name = mysqli_real_escape_string($con, $_POST['name']);
  $email = mysqli_real_escape_string($con, $_POST['email']);
  $address = mysqli_real_escape_string($con, $_POST['address']);
  $phonenum = mysqli_real_escape_string($con, $_POST['phonenum']);
  $pincode = mysqli_real_escape_string($con, $_POST['pincode']);
  $dob = mysqli_real_escape_string($con, $_POST['dob']);
  $password = mysqli_real_escape_string($con, $_POST['pass']);

  // Check if the email already exists
  $user_exist_query = "SELECT * FROM user_creds WHERE email = '$email'";
  $result = mysqli_query($con, $user_exist_query);

  if ($result) {
    if (mysqli_num_rows($result) > 0) {
      echo "<script>alert('Email Already registered'); window.location.href = '../index.php';</script>";
    } else {
      // Hash the password
      $hashed_password = password_hash($password, PASSWORD_BCRYPT);

      // Insert new user data with hashed password
      $query = "INSERT INTO user_creds(name, email, address, phonenum, pincode, dob, password) VALUES ('$name','$email','$address','$phonenum','$pincode','$dob','$hashed_password')";

      if (mysqli_query($con, $query)) {
        echo "<script>alert('Registration Successful'); window.location.href = '../index.php';</script>";
      } else {
        echo "<script>alert('Error: " . mysqli_error($con) . "'); window.location.href = '../index.php';</script>";
      }
    }
  } else {
    echo "<script>alert('Error: " . mysqli_error($con) . "'); window.location.href = '../index.php';</script>";
  }
}

if (isset($_POST['login'])) {
  // Sanitize user input to prevent SQL injection
  $email = mysqli_real_escape_string($con, $_POST['email']);
  $password = mysqli_real_escape_string($con, $_POST['pass']);  // Corrected the password field

  // Use prepared statement to avoid SQL injection
  $login_query = "SELECT * FROM user_creds WHERE email = ?";
  $stmt = mysqli_prepare($con, $login_query);

  if ($stmt) {
    // Bind parameter and execute the statement
    mysqli_stmt_bind_param($stmt, "s", $email);
    mysqli_stmt_execute($stmt);

    // Get the result
    $result = mysqli_stmt_get_result($stmt);

    if ($result) {
      // Check if user exists
      if (mysqli_num_rows($result) == 1) {
        // Fetch user data
        $row = mysqli_fetch_assoc($result);

        // Verify the password using password_verify
        if (password_verify($password, $row['password'])) {
          // Password is correct, start a session and store user information
          $_SESSION['logged_in'] = true;
          $_SESSION['name'] = $row['name'];

          // Redirect to the desired page
          header("Location: ../index.php");
          exit();
        } else {
          // Incorrect password
          echo "<script>alert('Incorrect email or password'); window.location.href = '../index.php';</script>";
        }
      } else {
        // User not found
        echo "<script>alert('Incorrect email or password'); window.location.href = '../index.php';</script>";
      }
    } else {
      // Error in getting result
      echo "Error: " . mysqli_stmt_error($stmt);
    }

    // Close the statement
    mysqli_stmt_close($stmt);
  } else {
    // Error in preparing the statement
    echo "Error: " . mysqli_error($con);
  }
} else {
  echo "<script>alert('Cannot Run Query'); window.location.href = '../index.php';</script>";
}
?>
