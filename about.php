<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link  rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css">s
  <?php require('inc/links.php'); ?>
  <title><?php echo $settings_r['site_title'] ?> - ABOUT</title>
  <style>
    .box{
      border-top-color: var(--teal) !important;
    }
  </style>
</head>
<body class="bg-light">

  <?php require('inc/header.php'); ?>

  <div class="my-5 px-4">
    <h2 class="fw-bold h-font text-center">ABOUT US</h2>
    <div class="h-line bg-dark"></div>
    <p class="text-center mt-3 justify-content-between align-items-center">
    Welcome to HOTEL DELUNA, a sanctuary of luxury and hospitality. Our journey began with a vision to redefine the hotel experience, focusing on
     creating a haven where sophistication meets comfort.
     <br>

At HOTEL DELUNA, we take pride in our commitment to excellence, evident in every detail of our carefully curated decor and the personalized service provided by our dedicated staff. Our hotel is designed to be more than just accommodation; it's an immersive experience tailored for the discerning traveler. Rooted in a blend of modern amenities and timeless elegance, each room and suite at HOTEL DELUNA reflects our passion for creating a welcoming sanctuary. Whether you're here for business or leisure, we strive to ensure your stay is nothing short of extraordinary. Join us at HOTEL DELUNA, where we invite you to be a part of an experience where luxury, warmth, and impeccable service come together seamlessly.

    </p>
  </div>

  <div class="container">
    <div class="row justify-content-between align-items-center">
      <div class="col-lg-6 col-md-5 mb-4 order-lg-1 order-md-1 order-2">
        <h3 class="mb-3">Our Founder- Biraj Shrestha</h3>
        <p>
        Meet the visionary behind HOTEL DELUNA – our founder,
         whose passion for hospitality and commitment to excellence have shaped this extraordinary haven. With a keen eye for detail and a dedication to creating a
          seamless blend of sophistication and comfort, the founder's influence is evident in every aspect of our hotel. Inspired by a desire to offer guests an exceptional 
          experience, HOTEL DELUNA stands as a testament to the founder's unwavering commitment to luxury, warmth, and impeccable service. Welcome to a world crafted with care
           and inspired by the vision of our esteemed founder.
        </p>
      </div>
      <div class="col-lg-5 col-md-5 mb-4 order-lg-2 order-md-2 order-1">
        <img src="images/about/1.jpg" class="w-100">
      </div>
    </div>
  </div>

  <div class="container mt-5">
    <div class="row">
      <div class="col-lg-3 col-md-6 mb-4 px-4">
        <div class="bg-white rounded shadow p-4 border-top border-4 text-center box">
          <img src="images/about/hotel.svg" width="70px">
          <h4 class="mt-3">100+ ROOMS</h4>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 px-4">
        <div class="bg-white rounded shadow p-4 border-top border-4 text-center box">
          <img src="images/about/customers.svg" width="70px">
          <h4 class="mt-3">200+ GUESTS</h4>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 px-4">
        <div class="bg-white rounded shadow p-4 border-top border-4 text-center box">
          <img src="images/about/rating.svg" width="70px">
          <h4 class="mt-3">150+ REVIEWS</h4>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 px-4">
        <div class="bg-white rounded shadow p-4 border-top border-4 text-center box">
          <img src="images/about/staff.svg" width="70px">
          <h4 class="mt-3">200+ STAFFS</h4>
        </div>
      </div>
    </div>
  </div>

  <h3 class="my-5 fw-bold h-font text-center">MANAGEMENT TEAM</h3>

  <div class="container px-4">
    <div class="swiper mySwiper">
      <div class="swiper-wrapper mb-5">
        <?php 
          $about_r = selectAll('team_details');
          $path=ABOUT_IMG_PATH;
          while($row = mysqli_fetch_assoc($about_r)){
            echo<<<data
              <div class="swiper-slide bg-white text-center overflow-hidden rounded">
                <img src="$path$row[picture]" class="w-100">
                <h5 class="mt-2">$row[name]</h5>
              </div>
            data;
          }
        
        ?>
      </div>
      <div class="swiper-pagination"></div>
    </div>
  </div>


  <?php require('inc/footer.php'); ?>

  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

  <script>
    var swiper = new Swiper(".mySwiper", {
      spaceBetween: 40,
      pagination: {
        el: ".swiper-pagination",
      },
      breakpoints: {
        320: {
          slidesPerView: 1,
        },
        640: {
          slidesPerView: 1,
        },
        768: {
          slidesPerView: 3,
        },
        1024: {
          slidesPerView: 3,
        },
      }
    });
  </script>


</body>
</html>