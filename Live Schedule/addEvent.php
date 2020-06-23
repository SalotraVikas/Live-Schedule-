<?php

require_once('bdd.php');

if (isset($_POST['title']) && isset($_POST['address']) && isset($_POST['practitioner']) && isset($_POST['time']) && isset($_POST['finish']) && isset($_POST['start']) && isset($_POST['end']) && isset($_POST['color']) && isset($_POST['notes'])){
	
	$title = $_POST['title'];
	$address = $_POST['address'];
	$practitioner = $_POST['practitioner'];
	$time = $_POST['time'];
	$finish = $_POST['finish'];
	$start = $_POST['start'];
	$end = $_POST['end'];
	$color = $_POST['color'];
	$notes = $_POST['notes'];

	$sql = "INSERT INTO events(title, address, practitioner, time, finish, start, end, color, notes) values ('$title','$address','$practitioner', '$time', '$finish', '$start', '$end', '$color', '$notes')";
	
	echo $sql;
	
	$query = $bdd->prepare( $sql );
	if ($query == false) {
	 print_r($bdd->errorInfo());
	 die ('Error prepare');
	}
	$sth = $query->execute();
	if ($sth == false) {
	 print_r($query->errorInfo());
	 die ('Error execute');
	}

}
header('Location: '.$_SERVER['HTTP_REFERER']);

	
?>