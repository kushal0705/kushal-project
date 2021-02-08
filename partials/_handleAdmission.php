<?php 
    $showError ="false";
    if($_SERVER['REQUEST_METHOD']=="POST"){
        include "_dbconnect.php";
        $fullName = $_POST['fullName'];
        $email= $_POST['email'];
        $password= $_POST['password'];
        $cPassword= $_POST['cPassword'];

        

    }
?>