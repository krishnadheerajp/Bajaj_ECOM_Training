<?php
class Database{

    private $connection=null;
    public function __construct(){
        $this->connection=new mysqli("localhost","root","root","movies_api");
        // // For easier assoc
        // mysqli_error($this->database);
        // $this->database->error;
        if(!$this->connection){
            echo $this->connection->error;
        }
    }

    public function getConnection(){
        return $this->connection;
    }

}
?>
