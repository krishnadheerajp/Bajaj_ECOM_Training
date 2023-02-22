<?php
include("./components/header.php");
include("./src/Car.php");
$car = new Car($connection);

$carData = $car->get($_GET['id']);
// print_r($carData);

// $carDataCopy=$car->get($_GET['id']);

// $singleCar = mysqli_fetch_assoc($carDataCopy);

$images = array();
$colors = array();
$cdids = array();

$name = null;
$price = null;
$discount = null;
$brand = null;
$count = 0;

while($carDetails=mysqli_fetch_array($carData)){
    if($count==0){
        $name = $carDetails['name'];
        $price = $carDetails['price'];
        $discount = $carDetails['discount'];
        $brand = $carDetails['brand'];
        $count=1;
    }
    // print_r($carDetails);
    $images[] = $carDetails['image_url'];
    $colors[] = $carDetails['color'];
    $numbers[] = $carDetails['number'];
    $cdids[] = $carDetails[9];

}

// print_r($images);


?>

<section class="main-container">
<div class="main-container-child">
    <div class="container-section">
            <div class="big-car-img">
                <img id="big-img" src="<?=$images[0]?>" alt="car">
            </div>

            <div class="img-options">
                <?php
                    foreach ($images as $key=>$value) {
                        ?>
                    <div class="img-option">
                        <img onclick="changeImg(this.src,'<?=$numbers[$key]?>','<?=$colors[$key]?>',<?=$cdids[$key]?>)" src="<?= $value?>" alt="car">
                        </div>
                    <?php }
                ?>
            </div>

            <div class="color-options">
            <?php
                //     foreach ($colors as $value) {
                //     echo '            <div class="color-option">
                //     <p style="background-color:'.$value.'"></p>
                // </div>';
                //     }
                ?>
                 <?php
                    foreach ($colors as $key=>$value) {
                        ?>
                    <div class="color-option">
                        <p style="background-color: <?=$value?>;"></p>
                        </div>
                    <?php }
                ?>

            </div>
    </div>
    <div class="container-section">
    <h1><?=$brand?> <?=$name?></h1>
    <h2>Rs <?=$price?></h2>
    <p>Available</p>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda perferendis laborum mollitia commodi, non distinctio natus a, tempora libero beatae similique labore quisquam ad, animi laboriosam nulla. Placeat, temporibus exercitationem?</p>
    <h2 id="car-number"><?=$numbers[0]?></h2>
    <a id="booking_url" href="./booking.php?cdid=<?=$cdids[0]?>">
    <button class="btn btn-primary">Book Now</button>
    </a>
</div>
</div>
</section>

<?php

include("./components/footer.php");

?>