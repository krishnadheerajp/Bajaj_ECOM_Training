<?php
include('./components/header.php');
include('src/User.php');
// print_r($_SERVER['REQUEST_METHOD']);
$msg = null;
$msgType = null;
if($_SERVER['REQUEST_METHOD']==='POST'){

$uname = $_POST['uname'];
$pwd = sha1($_POST['password']);

$user = new User($connection);

$response=$user->login($uname, $pwd);
if($response['success']){
    // $msg = "You are successfully logged in.";
    // $msgType = "success";
        $_SESSION['car_user'] = $uname;
        $_SESSION['user_id'] = $response['user_id'];
        header('Location: index.php');
}
else{
    $msg = "You have entered wrong credentials.";
    $msgType = "danger"; 
}
}
?>

<div class="container main-container-form bg-light my-3">
  <?php
  if($msg!=null){
    echo '<div class="alert alert-'.$msgType.' alert-dismissible fade show" role="alert">
     '.$msg.'
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>';
  }
  ?>
    <h2 class="text-center my-2">Login Form</h2>
    <form action="" method="post">
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Username:</label>
            <input type="text" name="uname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          </div>
        <div class="mb-3">
          <label for="exampleInputPassword1" class="form-label">Password</label>
          <input type="password" name="password" class="form-control" id="exampleInputPassword1">
        </div>
        <button type="submit" class="btn btn-primary form-control">Login</button>
        <p class="text-center my-2">Don't have an account ? <a href="Registration.php">Create One</a> </p>
      </form>
</div>
</body>
</html>