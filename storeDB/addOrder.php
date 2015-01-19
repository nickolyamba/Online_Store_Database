<?php
	//Turn on error reporting
	ini_set('display_errors', 'On');
	//include password to database
	include 'storedInfo.php';
	

	//Connects to the database
	$mysqli = new mysqli("oniddb.cws.oregonstate.edu", "goncharn-db", $myPassword, "goncharn-db");
	if ($mysqli->connect_errno) {
		echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
	}
	
	//-------------- Add Order------------//
	if(!($stmt = $mysqli->prepare("INSERT INTO `order` (`customerID`) VALUES (
	(SELECT `customerID` FROM `customer` WHERE `userName` = ?))"))){
		echo "Prepare failed: "  . $stmt->errno . " " . $stmt->error;
	}
	
	if(!($stmt->bind_param("s",$_REQUEST['userName']))){
		echo "Bind failed: "  . $stmt->errno . " " . $stmt->error;
	}
	
	if(!$stmt->execute()){
		echo "Execute failed: "  . $stmt->errno . " " . $stmt->error;
	}
	
	else {
		echo "<br>Added: " . $stmt->affected_rows . " rows to [order] table.";
	}
	
	$stmt->close();
		
	//close connection
	$mysqli->close();
	
	echo "<br><br><a href='../Interface.php'>Back to Database</a>";
?>