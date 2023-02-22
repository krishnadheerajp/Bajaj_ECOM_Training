<?php
// include ('src/Connection.php');
class User{

    public $connection = null;

    function __construct($connection){
        $this->connection = $connection;
    }
    public function create($name,$email,$username,$contact,$password){
        $query= "insert into users(name,username,email,password,contact) values ('$name','$username','$email','$password',$contact)";

        $response = mysqli_query($this->connection->getConnection(), $query);
        return $response;
    }

    public function login($username,$password){
        $query= "select * from users where username='$username' and password='$password'";

        $response = mysqli_query($this->connection->getConnection(), $query);
        // return $response;
        if(mysqli_num_rows($response)===1){
            $row=mysqli_fetch_assoc($response);
            return array("success"=>true,"user_id"=>$row['id']);
        }
            return array("success" => false);
    }
}
