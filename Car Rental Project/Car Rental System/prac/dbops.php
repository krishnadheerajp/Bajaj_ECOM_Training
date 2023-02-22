<?php

        $dbhost = 'localhost';
         $dbuser = 'root';
         $dbpass = 'root';
         $dbname = 'car-rental';

$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

    //    if(!$conn){
    //     echo "Connection is unsuccessfull<br>";
    //    }
    //    else{
    //     echo "Connection is successfull<br>";
    //    }

// Insertion

//     $query= "insert into users(name,username,email,password,contact) values ('jaswanth','jas','j@gmail.com','45678',18391)";

// if(mysqli_query($conn, $query)){
//     echo "Insertion successfull <br>";
// }
// else{
// echo mysqli_error($conn);
//     echo "<br>";
// }


// Updation

// $query= "update users set username='kd',password='98876' where id='4'";

// if(mysqli_query($conn, $query)){
//     echo "Updation successfull <br>";
// }
// else{
// echo mysqli_error($conn);
//     echo "<br>";
// }



// Deletion
// $query= "delete from users where id='18'";

// if(mysqli_query($conn, $query)){
//     echo "Deletion successfull <br>";
// }
// else{
// echo mysqli_error($conn);
//     echo "<br>";
// }


// Select

// $query= "select * from users";
// $result=mysqli_query($conn, $query);
// if($result){
//     $rows = mysqli_fetch_array($result);
//     print_r($rows);
//     echo "<br><br>";
//     $result=mysqli_query($conn, $query);
//     $rows = mysqli_fetch_assoc(mysqli_query($conn, $query));
//     print_r($rows);
//     echo "<br><br>";
//     $result=mysqli_query($conn, $query);
//     while ($row = mysqli_fetch_row($result)) {
//         echo $row[1];
//         echo "<br>";
//       }
// }
// else{
// echo mysqli_error($conn);
//     echo "<br>";
// }


// Super Globals 

// $a = 'hi';

// function doSomething(){
//     global $a;
//     echo $a;
// }
// doSomething();

// $uname = $_POST['uname'];
// $email = $_POST['email'];
// $name = $_POST['name'];
// $pwd = sha1($_POST['password']);
// $contact= intval($_POST['contact']);
// $query= "insert into users(name,username,email,password,contact) values ('$name','$uname','$email','$pwd',$contact)";

// if(mysqli_query($conn, $query)){
//     echo "Insertion successfull <br>";
// }
// else{
// echo mysqli_error($conn);
//     echo "<br>";
// }

include 'Connection.php';


?>