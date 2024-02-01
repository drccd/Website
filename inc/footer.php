<!-- footer -->
<div class="container-fluid" style="background: url('j1.png');">
    <div class="row">
        <div class="col-lg-12 text-center py-4">
            
            <div class="row">
                <div class="col">
                    <h5>Location</h5>
                    <p>Baluwatar, Kathmandu, Nepal</p>
                </div>
                <div class="col">
                    <h5>Call Us</h5>
                    <a hr ef="tel: 014292977" class="d-inline-block mb-2 text-decoration-none text-dark">
                        <i class="bi bi-telephone-fill"></i> 014292977
                    </a>
                    <br>
                    <a href="tel: +977 98465823477" class="d-inline-block mb-2 text-decoration-none text-dark">
                        <i class="bi bi-telephone-fill"></i> +977 98465823477
                    </a>
                </div>
                <div class="col">
                    <h5>Mail Us At</h5>
                    <p>info@hotelDeluna.com</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid bg-dark text-white">
    <div class="row">
        <div class="col-lg-12 text-center py-4">
            <h5>Follow us</h5>
            <a href="<?php echo $contact_r['tw'] ?>" class="d-inline-block text-decoration-none mb-2 rounded" style="color: white; font-size: 24px">
                <i class="bi bi-twitter p-1"></i>
            </a>
            <a href="<?php echo $contact_r['fb'] ?>" class="d-inline-block text-decoration-none mb-2 rounded" style="color: white; font-size: 24px">
                <i class="bi bi-facebook p-1"></i>
            </a>
            <a href="<?php echo $contact_r['insta'] ?>" class="d-inline-block text-decoration-none mb-2 rounded" style="color: white; font-size: 24px">
                <i class="bi bi-instagram p-1"></i>
            </a>
            <br>
            <div class="text-center py-4">
                <a href="index.php" class="text-white text-decoration-none mx-2">HOME</a>
                <a href="about.php" class="text-white text-decoration-none mx-2">ABOUT US</a>
                <a href="rooms.php" class="text-white text-decoration-none mx-2">ROOMS</a>
                <a href="facilities.php" class="text-white text-decoration-none mx-2">FACILITIES</a>
                <a href="contact.php" class="text-white text-decoration-none mx-2">CONTACT US</a>


            </div>
            <div class="text-center py-4">

                <a href="#" class="text-white text-decoration-none mx-2">TERMS AND CONDITIONS</a>

            </div>
            <p class="text-center py-2 m-0" style="color: lightgray;">Designed and Developed by Biraj Shrestha</p>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script>

  function alert(type,msg,position='body')
  {
    let bs_class = (type == 'success') ? 'alert-success' : 'alert-danger';
    let element = document.createElement('div');
    element.innerHTML = `
      <div class="alert ${bs_class} alert-dismissible fade show" role="alert">
        <strong class="me-3">${msg}</strong>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
    `;

    if(position=='body'){
      document.body.append(element);
      element.classList.add('custom-alert');
    }
    else{
      document.getElementById(position).appendChild(element);
    }
    setTimeout(remAlert, 3000);
  }

  function remAlert(){
    document.getElementsByClassName('alert')[0].remove();
  }

  function setActive()
  {
    let navbar = document.getElementById('nav-bar');
    let a_tags = navbar.getElementsByTagName('a');

    for(i=0; i<a_tags.length; i++)
    {
      let file = a_tags[i].href.split('/').pop();
      let file_name = file.split('.')[0];

      if(document.location.href.indexOf(file_name) >= 0){
        a_tags[i].classList.add('active');
      }

    }
  }

  
  function checkLoginToBook(email,room_id){
    if(email){
      window.location.href='confirm_booking.php?id='+room_id;
    }
    else{
      alert('error','Please login to book room!');
    }
  }

  setActive();

</script>