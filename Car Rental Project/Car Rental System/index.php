<?php
include('./components/header.php');
include("./src/Car.php");
?>
  <?php
  if($_GET['logout']=="true"){
    echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
     You are logged out successfully!
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>';
  }
  ?>

<!-- Cars -->

<section class="main-container">
    <div class="main-container-child">
    <?php
$car = new Car($connection);
$result=$car->index();
    if ($result) {
        while ($row = mysqli_fetch_assoc($result)) {

            ?>
                <div class="car">
            <div class="car-img">
                <a href="http://localhost:8888/PHP_Basics/car.php?id=<?= $row['id']?>">
                <img src="<?= $row['base_img'] ?>" alt="">
                </a>
            </div>
            <div class="car-details text-center">
                <h1><?= $row['brand'] ?> <?= $row['name'] ?></h1>
                <!-- <div class="colors">
                    <p style="background-color: black;"></p>
                    <p style="background-color: red;"></p>
                </div> -->
                <h2><i class="fa-solid fa-indian-rupee-sign"></i><?= $row['price'] ?></h2>

                <h2><?= $row['discount'] ?>% OFF</h2>
            </div>
        </div>
    <?php
        }
    }
?>
        <!-- <div class="car">
            <div class="car-img">
            <img src="https://cdn.autoportal.com/img/new-cars-gallery/marutisuzuki/ertiga-facelift/exterior/marutisuzuki-ertiga-facelift-42ccfb0a.jpg" alt="">
            </div>
            <div class="car-details">
                <h1>Maruti Suzuki Ertiga </h1>
                <div class="colors">
                    <p style="background-color: black;"></p>
                    <p style="background-color: red;"></p>
                </div>
                <h2 class="my-1"><i class="fa-solid fa-indian-rupee-sign"></i>5000</h2>

                <h2>10% OFF</h2>

                <h2>Available</h2>

            </div>
        </div> -->
    </div>
</section>

<?php
include("./components/footer.php");
?>