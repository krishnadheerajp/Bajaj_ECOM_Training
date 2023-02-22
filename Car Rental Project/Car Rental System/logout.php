<?php
session_start();
unset($_SESSION['car_user']);
session_destroy();
header('Location: index.php?logout=true');
?>