<?php

$page_roles = array('admin');

require_once 'inc/menu.php';
require_once 'dblogin.php';
require_once 'inc/checksession.php';
?>

<html>
<head>
    <title>Update Magazine</title>
</head>

<body >
<?php
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);
	
if(isset($_GET['item_id'])) {
	$item_id = $_GET['item_id'];
	
	$query = "SELECT * from magazine where item_id=$item_id";
	
	$result = $conn->query($query);
	if(!$result) die($conn->error);	

	$rows = $result->num_rows;

	for($j=0; $j<$rows; ++$j) {
		$result->data_seek($j);
		$row = $result->fetch_array(MYSQLI_NUM);
	
echo <<<_END
	<pre>
	<form method='post' action='updatemagazine.php'>
	item_id: <input type ="text" name="item_id" id="item_id" value='$row[1]'><br>
	magazine_id: <input type ="text" name="magazine_id" id="magazine_id" value='$row[0]'><br>
	item_description: <input type ="text" name="item_description" id="item_description" value='$row[2]'><br>
	item_type: <input type ="text" name="item_type" id="item_type" value='$row[3]'><br>
	publisher: <input type ="text" name="publisher" id="publisher" value='$row[4]'><br>
	publisher_date: <input type ="text" name="publisher_date" id="publisher_date" value='$row[5]'><br>
	issue_number: <input type ="text" name="issue_number" id="issue_number" value='$row[6]'><br
	genre: <input type ="text" name="genre" id="genre" value='$row[7]'><br
		<input type='hidden' name='item_id' value='$row[1]'>
		<input type='hidden' name='update' value='yes'>
		<input type='submit' value="Update">
		</form>
	</pre>
	
_END;

	}
}	

if(isset($_POST['update'])) {
	
	$item_id = $_POST['item_id'];
	$magazine_id = $_POST['magazine_id'];
	$item_description = $_POST['item_description'];
	$item_type = $_POST['item_type'];
	$publisher = $_POST['publisher'];
	$publisher_date = $_POST['publisher_date'];
	$issue_number = $_POST['issue_number'];
	$genre = $_POST['genre'];
	
	$query = "UPDATE magazine set magazine_id=$magazine_id, item_description='$item_description', item_type='$item_type', publisher='$publisher', publisher_date='$publisher_date', issue_number='$issue_number', genre='$genre' where item_id='$item_id'";
	
	$result = $conn->query($query);
	if(!$result) die($conn->error);	
	
	header("Location: magazineinventory.php");
		
}
	require_once 'inc/footer.php';
		
$conn->close();	
	
	
?>