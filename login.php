<html>
<head>
    <title>Login</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css" >

</head>

<body >

<div class="container py-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
            <form action="login.php" method="post">
                <h2>Account Login</h2>
                <div class="form-group mb-4">
                    <input type="text" class="form-control form-control-lg" name="user_name" placeholder="Username">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control form-control-lg" name="password" placeholder="Password">
                </div>
                 <div class="form-row justify-content-center">
                  <div class="form-group mt-4">
                      <button type="submit" class="btn btn-primary btn-lg">Submit</button>
                  </div>
                </div>
        <a href="newUser.php"> No account? Create one now! <a/>
            </form>

        </div>
    </div>
</div>

<?php
require_once 'dblogin.php';
require_once 'user.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);


if (isset($_POST['user_name']) && isset($_POST['password'])) {
	
	$user_name = mysql_entities_fix_string($conn, $_POST['user_name']);
	$password = mysql_entities_fix_string($conn, $_POST['password']); 
	
	$query = "SELECT password FROM member WHERE user_name = '$user_name'";
	
	$result = $conn->query($query);
	if(!$result) die($conn->error);

	$rows = $result->num_rows;
	$passwordFromDB="";
	for($j=0; $j<$rows; $j++)
	{
		$result->data_seek($j); 
		$row = $result->fetch_array(MYSQLI_ASSOC);
		$passwordFromDB = $row['password'];
	}
	

	$salt1 = 'qm&h*';
	$salt2 = 'pg!@';
	$token = hash('ripemd128',"$salt1$password$salt2"); 
	
	if($token == $passwordFromDB){
		
		$user = new User($user_name);
		
		session_start();
								
		$_SESSION['user'] = $user;	
					
		header("Location: categories.php");
	}
	else
	{
		echo "login error<br>";
		exit();
	}
	
}else{
	exit();
}

$conn->close();


//sanitization functions
function mysql_entities_fix_string($conn, $string){
	return htmlentities(mysql_fix_string($conn, $string));	
}

function mysql_fix_string($conn, $string){
	if($string = stripslashes($string));
	return $conn->real_escape_string($string);
}
?>



<?php
   require_once 'inc/footer.php';


  ?>
