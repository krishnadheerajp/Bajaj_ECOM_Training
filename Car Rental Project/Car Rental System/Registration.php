<?php
include('./components/header.php');
include('src/User.php');
// print_r($_SERVER['REQUEST_METHOD']);
$msg = null;
if($_SERVER['REQUEST_METHOD']==='POST'){

$uname = $_POST['uname'];
$email = $_POST['email'];
$name = $_POST['name'];
$pwd = sha1($_POST['password']);
$contact= intval($_POST['contact']);

$user = new User($connection);

$response=$user->create($name, $email, $uname, $contact, $pwd);
if($response){
    $msg = "Your data has been inserted successfully.";
}

}
?>

<div class="container main-container-form bg-light my-3">
  <?php
  if($msg!=null){
    echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Success!</strong> '.$msg.'
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>';
  }
  ?>
    <h2 class="text-center my-2">Registration Form</h2>
    <form action="" method="post">
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Name:</label>
            <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          </div>
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Username:</label>
            <input type="text" name="uname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          </div>
        <div class="mb-3">
          <label for="exampleInputEmail1" class="form-label">Email address</label>
          <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Contact:</label>
            <input type="text" name="contact" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          </div>
        <div class="mb-3">
          <label for="exampleInputPassword1" class="form-label">Password</label>
          <input type="password" name="password" class="form-control" id="exampleInputPassword1">
        </div>
        <button type="submit" class="btn btn-primary form-control">Register</button>
        <p class="text-center my-2">Already have an account ? <a href="login.php">Login</a> </p>
      </form>
</div>
</body>
</html>