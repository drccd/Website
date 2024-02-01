<?php

require('../inc/db_config.php');
require('../inc/essentials.php');
adminLogin();

// Function to handle errors and return a JSON response
function respondWithError($message)
{
  $response = array('success' => false, 'message' => $message);
  echo json_encode($response);
  exit;
}

if (isset($_POST['get_users'])) {
  $res = selectAll('user_creds');
  $i = 1;
  $path = USERS_IMG_PATH;

  $data = "";

  while ($row = mysqli_fetch_assoc($res)) {
    $del_btn = "<button type='button' onclick='remove_user(\"$row[email]\")' class='btn btn-danger shadow-none btn-sm'>
            <i class='bi bi-trash'></i> 
          </button>";

    $data .= "
            <tr>
              <td>$i</td>
              <td>
                
                <br>
                $row[name]
              </td>
              <td>$row[email]</td>
              <td>$row[phonenum]</td>
              <td>$row[address] | $row[pincode]</td>
              <td>$row[dob]</td>
              
              <td>$del_btn</td>
            </tr>
          ";
    $i++;
  }

  echo $data;
}

if (isset($_POST['remove_user'])) {
  $frm_data = filteration($_POST);

  // Check the database connection
  if (!$connection) {
    respondWithError("Database connection failed.");
  }

  $res = delete("DELETE FROM `user_creds` WHERE `email`=?", [$frm_data['email']], 's'); // Use 's' for string parameter

  if ($res) {
    echo json_encode(array('success' => true));
  } else {
    respondWithError("User removal failed: " . mysqli_error($connection));
  }
}

if (isset($_POST['search_user'])) {
  $frm_data = filteration($_POST);

  $query = "SELECT * FROM `user_creds` WHERE `email` LIKE ?";

  $res = select($query, ["%{$frm_data['name']}%"], 's');
  $i = 1;
  $path = USERS_IMG_PATH;

  $data = "";

  while ($row = mysqli_fetch_assoc($res)) {
    $del_btn = "<button type='button' onclick='remove_user(\"$row[email]\")' class='btn btn-danger shadow-none btn-sm'>
            <i class='bi bi-trash'></i> 
          </button>";

    $data .= "
            <tr>
              <td>$i</td>
              <td>
                
                <br>
                $row[name]
              </td>
              <td>$row[email]</td>
              <td>$row[phonenum]</td>
              <td>$row[address] | $row[pincode]</td>
              <td>$row[dob]</td>
              
              <td>$del_btn</td>
            </tr>
          ";
    $i++;
  }

  echo $data;
}
