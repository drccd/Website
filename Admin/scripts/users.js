function get_users() {
  let xhr = new XMLHttpRequest();
  xhr.open("POST", "ajax/users.php", true);
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

  xhr.onload = function () {
    document.getElementById('users-data').innerHTML = this.responseText;
  }

  xhr.send('get_users');
}

function remove_user(email) {
  if (confirm("Are you sure, you want to remove this user?")) {
    let data = new FormData();
    data.append('email', email);
    data.append('remove_user', '1'); // Add '1' to indicate that 'remove_user' is set

    let xhr = new XMLHttpRequest();
    xhr.open("POST", "ajax/users.php", true);

    xhr.onload = function () {
      if (this.responseText == 1) {
        alert('success', 'User Removed!');
        get_users();
      } else {
        alert('error', 'User removal failed!');
      }
    };
    xhr.send(data);
  }
}

function search_user(username) {
  let xhr = new XMLHttpRequest();
  xhr.open("POST", "ajax/users.php", true);
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

  xhr.onload = function () {
    document.getElementById('users-data').innerHTML = this.responseText;
  }

  xhr.send('search_user&name=' + username);
}

window.onload = function () {
  get_users();
}
