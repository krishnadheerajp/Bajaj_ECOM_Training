<?php
// include("./src/Connection.php");

class Booking{

    private $connection = null;

    function __construct($connection){
        $this->connection = $connection;
    }

    public function create($cdid,$uid,$start_dt,$end_date,$amount){
        $query= "insert into bookings(cdid,uid,start_date,end_date,amount) values ('$cdid','$uid','$start_dt','$end_date','$amount')";
        $response = mysqli_query($this->connection->getConnection(), $query);
        return $response;
    }

    public function show_bookings($id){
        $query= "select * from users u,bookings b,car_details cd,cars c where b.uid=u.id and b.cdid=cd.id and c.id=cd.cid and u.id=$id";
        $response = mysqli_query($this->connection->getConnection(), $query);
        return $response;
    }
}


?>