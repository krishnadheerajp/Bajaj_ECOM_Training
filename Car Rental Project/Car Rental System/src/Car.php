<?php
class Car{

    private $connection = null;

    function __construct($connection){
        $this->connection = $connection;
    }
    public function index(){
        $query= "select * from cars";

       if($response = mysqli_query($this->connection->getConnection(), $query)){
        return $response;
       }
    }

    public function get($id){
        $query = "select * from cars c,car_details cd where c.id=cd.cid and c.id=$id";
        if($response = mysqli_query($this->connection->getConnection(), $query)){
            return $response;
           }
    }

    public function getSingleCarDetails($id){
        $query = "select * from cars c,car_details cd where c.id=cd.cid and cd.id=$id;";
        if($response = mysqli_query($this->connection->getConnection(), $query)){
            return $response;
        }
    }
}

?>