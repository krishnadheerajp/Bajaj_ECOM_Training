<?php

class ReviewController
{

    private $reviewGateway = null;
    public function __construct($gateway)
    {
        $this->reviewGateway = $gateway;
    }
    public function handleRequest($method, $id)
    {
        if ($id != null) {
            $this->processResourceRequest($method, $id);
        } else {
            $this->processRequest($method);
        }
    }


    public function processRequest($method)
    {
        switch ($method) {
            case 'GET': {
                    $response = $this->reviewGateway->index();
                    echo json_encode($response, JSON_PRETTY_PRINT);
                    break;
                }
            case 'POST': {
                    // To decode json and get an associative (true)
                    $movies = (array) json_decode(file_get_contents('php://input'), true);
                    // print_r($movies);
                    $response = $this->reviewGateway->create($movies);
                    if ($response) {
                        echo json_encode(array("success" => true, "message" => "Movie review created"));
                    } else {
                        echo json_encode(array("success" => false, "message" => "Movie review not created"));
                    }
                    break;
                }
        }
    }

    public function processResourceRequest($method, $id)
    {
        switch ($method) {
            case 'GET': {
                    $response = $this->reviewGateway->showRev($id);
                    echo json_encode($response, JSON_PRETTY_PRINT);
                    break;
                }
            case 'PUT': {
                    // To decode json and get an associative (true)
                    $movie = (array) json_decode(file_get_contents('php://input'), true);
                    // print_r($movies);
                    $response = $this->reviewGateway->update($movie, $id);
                    if ($response) {
                        echo json_encode(array("success" => true, "message" => "Movie review updated"));
                    } else {
                        echo json_encode(array("success" => false, "message" => "Movie review not updated"));
                    }
                    break;
                }
            case 'DELETE': {
                    $response = $this->reviewGateway->delete($id);
                    if ($response) {
                        echo json_encode(array("success" => true, "message" => "Movie review deleted"));
                    } else {
                        echo json_encode(array("success" => false, "message" => "Movie review not deleted"));
                    }
                    break;
                }
        }
    }
}
