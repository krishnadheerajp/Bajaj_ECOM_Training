<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET,POST,PUT,DELTE,OPTIONS");
header("Access-Control-Allow-Headers: *");
header('Content-type:application/json;charset=UTF-8');
$urlParts=explode("/",$_SERVER['REQUEST_URI']);
$id=$urlParts[3]??null;

// include("./src/Database.php");
// include("./src/controllers/MovieController.php");
// include("./src/gateways/MovieGateway.php");
// include("./src/controllers/ReviewController.php");
// include("./src/gateways/ReviewGateway.php");

spl_autoload_register(function ($class_name) {
    $path=null;
    // var_dump($path);
    if(str_contains($class_name,"Controller")){
        $path= 'src/controllers/'.$class_name . '.php';
    }
    else if(str_contains($class_name,"Gateway")){
        $path= 'src/gateways/'.$class_name . '.php';
    }
    else{
        $path= 'src/'.$class_name . '.php';
    }
    include $path;
});

set_exception_handler("ErrorHandler::handleException");

$database=new Database();

if($urlParts[2]==="movies"){
    $movieGateway=new MovieGateway($database);

    $movieController=new MovieController($movieGateway);
    
    $movieController->handleRequest($_SERVER['REQUEST_METHOD'],$id);
}

else if($urlParts[2]==="reviews"){
    $reviewGateway=new ReviewGateway($database);

    $reviewController=new ReviewController($reviewGateway);
    
    $reviewController->handleRequest($_SERVER['REQUEST_METHOD'],$id);
}


//  $response=$movieGateway->index();
//  $pretty_json=json_encode($response, JSON_PRETTY_PRINT);

//  echo "<pre> $pretty_json  </pre>";


?>