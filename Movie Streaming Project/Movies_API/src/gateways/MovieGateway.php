<?php

class MovieGateway{
    private $connection=null;
    public function __construct($database){
        $this->connection=$database->getConnection();
    }

    public function index(){
        $query="select * from movies";
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
        $query="select * from movies where id='$id'";
        $result=$this->connection->query($query);
        $movie=$result->fetch_assoc();
        $query="select * from reviews where mid=$id order by created_at desc";
        $result=$this->connection->query($query);
        // $response=$result->fetch_assoc();
        // print_r($response);
        $res=array();
        while($row=$result->fetch_assoc()){
            $row['rating']=(int)$row['rating'];
            $res[]=$row;
        }
        // print_r($data);
        $data=array("movie"=>$movie,"reviews"=>$res);
        return $data;
    }

    public function delete($id){
        $query="delete from movies where id='$id'";
        $result=$this->connection->query($query);
        return $result;
    }

    public function update($movie,$id){
        $name=$movie['name'];
        $releaseDate=$movie['releaseDate'];
        $rating=$movie['rating'];
        $description=$movie['description'];
        $genre=$movie['genre'];
        $cast=$movie['cast'];
        $runtime=$movie['runtime'];
        $poster=$movie['poster'];
        $query="update movies set name='$name',releaseDate='$releaseDate',rating='$rating',description='$description',genre='$genre',cast='$cast',runtime='$runtime',poster='$poster' where id='$id'";
        if($this->connection->query($query)){
            return true;
        }
        return false;
    }

    public function create($movie){
        $name=$movie['name'];
        $releaseDate=$movie['releaseDate'];
        $rating=$movie['rating'];
        $description=$movie['description'];
        $genre=$movie['genre'];
        $cast=$movie['cast'];
        $runtime=$movie['runtime'];
        $poster=$movie['poster'];
        $query="insert into movies(name,releaseDate,rating,description,genre,cast,runtime,poster) 
        values ('$name','$releaseDate',$rating,'$description','$genre','$cast',$runtime,'$poster')";

        if($this->connection->query($query)){
            return true;
        }
        return false;
    }


}

?>