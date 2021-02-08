<?php 
    $showError = "false";
    if($_SERVER['REQUEST_METHOD'] == "post"){
        include '_dbconnect.php';
        $adminEmail = $_POST['adminEmail'];
        $adminPassword = $_POST['adminPassword'];

        $sql = "select * from admin where admin_email = `$adminEmail`";
        $result = mysqli_query($conn,$sql);

        if($result->num_rows >0){
            $row = mysqli_fetch_assoc($result);
                if($row['admin_password'] = $adminPassword){
                    session_start();
                    $_SESSION['loggedin'] = true;
                    // $_SESSION['studentid'] = $row['student_id'];
                    $_SESSION['adminEmail'] = $adminEmail;
                    // $_SESSION['studentusername'] = $row['student_username'];
                    echo "logged in". $adminEmail;
                    header("Location: /kushal-project/admin.php");
                }
                else{
                    $showError = "true";
                    $error = "Unable to login";
                    header("Location: /kushal-project/admin.php?error=$adminPassword");
                }
            }
            else{
            $showError = "true";
            $error = "Unable to login";
            header("Location: /kushal-project/admin.php?error=$error");   
        }
    }
    
?>