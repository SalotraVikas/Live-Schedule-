<?php

require_once('bdd.php');
if (isset($_POST['delete']) && isset($_POST['id'])){
	
	
	$id = $_POST['id'];
	
	$sql = "DELETE FROM events WHERE id = $id";
	$query = $bdd->prepare( $sql );
	if ($query == false) {
	 print_r($bdd->errorInfo());
	 die ('Error prepare');
	}
	$res = $query->execute();
	if ($res == false) {
	 print_r($query->errorInfo());
	 die ('Error execute');
	}
	
}elseif (isset($_POST['title']) && isset($_POST['practitioner']) && isset($_POST['time']) && isset($_POST['finish']) && isset($_POST['notes']) && isset($_POST['address']) && isset($_POST['color']) && isset($_POST['id'])){
	
	$id = $_POST['id'];
	$title = $_POST['title'];
	$practitioner = $_POST['practitioner'];
	$time = $_POST['time'];
	$finish = $_POST['finish'];
	$notes = $_POST['notes'];
	$address = $_POST['address'];
	$color = $_POST['color'];
	
	
	$sql = "UPDATE events SET  title = '$title', practitioner = '$practitioner', time = '$time', finish = '$finish', notes = '$notes', address = '$address',color = '$color' WHERE id = $id ";

	
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
header('Location: index.php');

	
?>