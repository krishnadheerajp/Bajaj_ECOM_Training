<?php
include('./components/header.php');
include("./src/Booking.php");
if(!isset($_SESSION['car_user'])){
    header("Location: login.php");
}
?>
<div class="main-container">
    <div class="main-container-child">
<?php
$booking = new Booking($connection);
$result=$booking->show_bookings($_SESSION['user_id']);
// print_r($result);
    if ($result) {
        while ($row = mysqli_fetch_assoc($result)) {
            ?>
                <div class="car" style="height: 70vh">
            <div class="car-img">
                <img src="<?= $row['image_url'] ?>" alt="">
            </div>
            <div class="car-details text-center">
                <h1><?= $row['brand'] ?> <?= $row['name'] ?></h1>
                <div class="colors">
                    <p style="margin:auto;background-color: <?=$row['color']?>;"></p>
                </div>
                <h2><i class="fa-solid fa-indian-rupee-sign"></i><?= $row['amount'] ?></h2>

                <h2>From: <?php
                $date = date_create(($row['start_date']));
                $formatted_date = date_format($date,"d/m/y");
                echo $formatted_date."<br> To: ";
                $date = date_create(($row['end_date']));
                $formatted_date = date_format($date,"d/m/y");
                echo $formatted_date."<br>";
                ?> <br/>
            
            </h2>
            </div>
        </div>
    <?php
        }
    }
?>

</div>
</div>

<?php 
include("./components/footer.php");
?>