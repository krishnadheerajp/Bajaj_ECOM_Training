<?php

class MovieController{

    private $movieGateway=null;
    public function __construct($gateway){
        $this->movieGateway=$gateway;
    }
    public function handleRequest($method,$id){
        if($id!=null){
            $this->processResourceRequest($method,$id);
        }
        else{
            $this->processRequest($method);
        }
    }


    public function processRequest($method){
       switch($method){
        case 'GET':{
            $response=$this->movieGateway->index();
            echo json_encode($response,JSON_PRETTY_PRINT);
            break;
       }
       case 'POST':{
        // To decode json and get an associative (true)
            $movies=(array)json_decode(file_get_contents('php://input'),true);
            // print_r($movies);
        $response=$this->movieGateway->create($movies);
        if($response){
            echo json_encode(array("success"=>true,"message"=>"Movie created"));
        }
        else{
            echo json_encode(array("success"=>false,"message"=>"Movie not created"));
        }
        break;
       }
    }
}

    public function processResourceRequest($method,$id){
        switch($method){
            case 'GET':{
                $response=$this->movieGateway->show($id);
                echo json_encode($response,JSON_PRETTY_PRINT);
                break;
            }
            case 'PUT':{
                      // To decode json and get an associative (true)
            $movie=(array)json_decode(file_get_contents('php://input'),true);
            // print_r($movies);
        $response=$this->movieGateway->update($movie,$id);
        if($response){
            echo json_encode(array("success"=>true,"message"=>"Movie updated"));
        }
        else{
            echo json_encode(array("success"=>false,"message"=>"Movie not updated"));
        }
                break;
            }
            case 'DELETE':{
                $response=$this->movieGateway->delete($id);
                if($response){
                    echo json_encode(array("success"=>true,"message"=>"Movie deleted"));
                }
                else{
                    echo json_encode(array("success"=>false,"message"=>"Movie not deleted"));
                }
                break;
            }
        }
    }
    }


?>