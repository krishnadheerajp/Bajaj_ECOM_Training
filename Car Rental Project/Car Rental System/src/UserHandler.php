<?php

include('./User.php');
print_r($_SERVER['REQUEST_METHOD']);
if($_SERVER['REQUEST_METHOD']==='POST'){

$uname = $_POST['uname'];
$email = $_POST['email'];
$name = $_POST['name'];
$pwd = sha1($_POST['password']);
$contact= intval($_POST['contact']);

$user = new User($connection);

$response=$user->create($name, $email, $uname, $contact, $pwd);

if($response){
    echo "Insert successfull!";
}
}
?>

