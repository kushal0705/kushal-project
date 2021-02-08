<?php
    $showError = "false";
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        include '_dbconnect.php';
        $student_username = $_POST['signupUsername'];
        $student_email = $_POST['signupEmail'];
        $student_password = $_POST['signupPassword'];
        $student_cpassword = $_POST['signupCpassword'];
        
        //check if user already exists or not
        $existsSQL = "select * from `students` where student_email=`$student_email`";
        $result = mysqli_query($conn,$existsSQL);
        // $numRows = mysqli_num_rows($result);
        if($result->num_rows >0){
            $showError = "Email already in use";
        }
        else
            if($student_password == $student_cpassword){
                $hash_password = password_hash($student_password,PASSWORD_DEFAULT);
                $sql = "INSERT INTO `students` (`student_id`, `student_username`, `student_email`, `student_password`, `student_description`, `student_photo`, `timestamp`) VALUES (NULL, '$student_username', '$student_email', '$hash_password', NULL, NULL, current_timestamp())";
                $result = mysqli_query($conn,$sql);

                if($result){
                    $showAlert = true;
                    header("Location:/kushal-project/index.php?signupSuccess=true");
                    exit();
                }
            }
            else{
                $showError = "Passwords do not match";
                header("Location:/kushal-project/index.php?signupSuccess=false&error=$showError");
            }
        
        header("Location:/kushal-project/index.php?signupSuccess=false&error=$showError");
    }
?>