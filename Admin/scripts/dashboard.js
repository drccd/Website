

function user_analytics(period=1)
{
  let xhr = new XMLHttpRequest();
  xhr.open("POST","ajax/dashboard.php",true);
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

  xhr.onload = function(){
    let data = JSON.parse(this.responseText);

    document.getElementById('total_new_reg').textContent = data.total_new_reg;
    document.getElementById('total_queries').textContent = data.total_queries;
    document.getElementById('total_reviews').textContent = data.total_reviews;
  }

  xhr.send('user_analytics&period='+period);
}


window.onload = function(){
  booking_analytics();
  user_analytics();
}