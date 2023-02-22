<?php
include("./components/header.php");
if(!isset($_SESSION['car_user'])){
    header("Location: login.php");
}
include("./src/Car.php");
include("./src/Booking.php");
$car = new Car($connection);
$response = $car->getSingleCarDetails($_GET['cdid']);
$carDetails = mysqli_fetch_assoc($response);
$booking = new Booking($connection);

if($_SERVER['REQUEST_METHOD']=="POST"){
    $cdid = $_GET['cdid'];
    $uid = $_SESSION['user_id'];
    $start_dt = $_POST['start_date'];
    $end_dt = $_POST['end_date'];

$date1=date_create($_POST['start_date']);;
$date2=date_create($_POST['end_date']);;
    $total_days = date_diff($date1,$date2)->days;
    $amount = $carDetails['price']*$total_days;
    $discount = ($carDetails['discount'])/100*$amount;
    $amount = $amount - $discount;
    $result=$booking->create($cdid,$uid,$start_dt,$end_dt,$amount);
    // print_r($result);
    if($result){
    ?>
    <script>alert("booking done successfully");</script>
    <?php
    }
    
}

// print_r($carDetails);
?>

<section class="main-container">

        <div class="main-container-child">
            <div class="booking-section">
                <div class="booking-section-img">
                    <img src="<?=$carDetails['image_url']?>" alt="car">
                </div>
                <div class="booking-details">
                    <h1><?=$carDetails['brand']?> <?=$carDetails['name']?></h1>

                    <h2>Rs <?=$carDetails['price']?></h2>

                    <h4><?=$carDetails['number']?></h4>

                    <p><?=$carDetails['is_available']?"Available":"Unavailable" ?></p>
                </div>
            </div>
            <div class="booking-section">
            <form action="" method="POST">

                <h1>Fill Booking Details</h1>

                <div>
                <p>Start Date</p>
                <input type="date" required class="form-control" min="<?=date('Y-m-d')?>" id="start_date" name="start_date"/>
                </div>

                <div>
                <p>End Date</p>
                <input type="date" class="form-control" onchange="calculatePrice(<?=$carDetails['price']?>,<?= $carDetails['discount']?>)" min="<?=date('Y-m-d')?>" id="end_date" name="end_date"/>
                </div>

                <h3 class="my-1">

                To Be Paid : <span id="famt" class="my-2">0</span> (<?= $carDetails['discount']?>% discount)

                </h3>


                <button class="btn btn-primary">Confirm Booking</button>

</form>
            </div>
        </div>

    </section>

<?php
include("./components/footer.php");
?>