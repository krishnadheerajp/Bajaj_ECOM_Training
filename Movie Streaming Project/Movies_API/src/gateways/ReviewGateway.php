<?php 
class ReviewGateway{
    private $connection=null;
    public function __construct($database){
        $this->connection=$database->getConnection();
    }

    public function index(){
        $query="select * from reviews";
        $result=$this->connection->query($query);
        // $response=$result->fetch_assoc();
        // print_r($response);
        $data=array();
        while($row=$result->fetch_assoc()){
            $data[]=$row;
        }
        // print_r($data);
        return $data;
    }

    public function show($id){
        $query="select * from reviews where id='$id'";
        $result=$this->connection->query($query);
        $movie=$result->fetch_assoc();
        return $movie;
    }

    public function delete($id){
        $query="delete from reviews where id='$id'";
        $result=$this->connection->query($query);
        return $result;
    }

    // public function showRev($id){
    //     $query="select * from reviews where mid=$id";
    //     $result=$this->connection->query($query);
    //     // $response=$result->fetch_assoc();
    //     // print_r($response);
    //     $data=array();
    //     while($row=$result->fetch_assoc()){
    //         $data[]=$row;
    //     }
    //     // print_r($data);
    //     return $data;
    // }

    public function update($review,$id){
        $mid=$review['mid'];
        $reviewmsg=$review['review'];
        $email=$review['email'];
        $rating=$review['rating'];
        $query="update reviews set review='$reviewmsg',rating='$rating' where id='$id'";
        if($this->connection->query($query)){
            return true;
        }
        return false;
    }

    public function create($review){
        $mid=$review['mid'];
        $reviewmsg=$review['review'];
        $email=$review['email'];
        $rating=$review['rating'];
        $query="insert into reviews(mid,email,review,rating) 
        values ('$mid','$email','$reviewmsg',$rating)";
        if($this->connection->query($query)){
            return true;
        }
        return false;
    }

}

?>