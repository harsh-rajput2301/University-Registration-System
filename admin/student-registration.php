<?php
session_start();
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
    {   
header('location:index.php');
}
else{

if(isset($_POST['submit']))
{
    $studentname=$_POST['studentname'];
    $studentregno=$_POST['studentregno'];
    $emailid=$_POST['emailid'];
    $phone_no=$_POST['phone_no'];
    $length = strlen ($phone_no);
    $pass=$_POST['password'];
    $uppercase = preg_match('@[A-Z]@', $pass);
    $lowercase = preg_match('@[a-z]@', $pass);
    $number = preg_match('@[0-9]@', $pass);
    $specialChars = preg_match('@[^\w]@', $pass);
    $password=md5($_POST['password']);
    if(!preg_match("/^([a-zA-Z' ]+)$/",$studentname) ){
        $_SESSION['msg']="Error : Student  not Registered\nOnly alphabets and whitespace are allowed for name.";
    }elseif (!$uppercase || !$lowercase || !$number || !$specialChars || strlen($pass) < 8) {
        $_SESSION['msg']="Error : Student  not Registered\nPassword should be at least 8 characters in length and should include at least one upper case letter, one number, and one special character.";
    }elseif (!preg_match ("/^[0-9]*$/", $phone_no)) {
        $_SESSION['msg']="Error : Student  not Registered\nOnly numeric values allowed for mobile no.";
    }elseif ($length != 10) {
        $_SESSION['msg']="Error : Student  not Registered\nMobile must have 10 digits.";
    }else{
        $ret=mysqli_query($con,"insert into students(studentName,StudentRegno,password,phone_no,StudentEmail) values('$studentname','$studentregno','$password','$phone_no','$emailid')");
        if($ret)
        {
            $_SESSION['msg']="Student Registered Successfully !!";
        }
        else
        {
            $_SESSION['msg']="Error : Student  not Registered";
        }
    }
}
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Student Registration</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/mystyle.css" rel="stylesheet" />
</head>

<body>
<?php include('includes/header.php');?>
    <!-- LOGO HEADER END-->
<?php if($_SESSION['alogin']!="")
{
 include('includes/menubar.php');
}
 ?>
    <!-- MENU SECTION END-->
    <div class="content-wrapper">
        <div class="container">
              <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Student Registration  </h1>
                    </div>
                </div>
                <div class="row" >
                  <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                          Student Registration
                        </div>
<font color="green" align="center"><?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?></font>


                        <div class="panel-body">
                       <form name="dept" method="post">
   <div class="form-group">
    <label for="studentname">Student Name  </label>
    <input type="text" class="form-control" id="studentname" name="studentname" placeholder="Student Name" required />
  </div>

 <div class="form-group">
    <label for="studentregno">Student Reg No   </label>
    <input type="text" class="form-control" id="studentregno" name="studentregno" onBlur="userAvailability()" placeholder="Student Reg no" required />
     <span id="user-availability-status1" style="font-size:12px;">
  </div>

  <div class="form-group">
    <label for="emailid">Email ID  </label>
    <input type="email" class="form-control" id="emailid" name="emailid" placeholder="Enter Email" required />
  </div> 

  <div class="form-group">
    <label for="password">Password  </label>
    <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required />
  </div>   

  <div class="form-group">
    <label for="phone_no">Phone No  </label>
    <input type="text" class="form-control" id="phone_no" name="phone_no" placeholder="Enter Phone No" required />
  </div> 

 <button type="submit" name="submit" id="submit" class="btn btn-default">Submit</button>
</form>
                            </div>
                            </div>
                    </div>
                  
                </div>

            </div>





        </div>
    </div>
  <?php include('includes/footer.php');?>
    <script src="assets/js/jquery-1.11.1.js"></script>
    <script src="assets/js/bootstrap.js"></script>
<script>
function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'regno='+$("#studentregno").val(),
type: "POST",
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>


</body>
</html>
<?php } ?>
