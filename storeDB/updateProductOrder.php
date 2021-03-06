<?php
	//Turn on error reporting
	ini_set('display_errors', 'On');
	//include password to database
	include 'storedInfo.php';
	
	// get productID and orderID values from POST
	$result = $_POST['P_O'];
	$result_explode = explode('|', $result);
	$UpdateProdID = $result_explode[0]."<br />";
	$UpdateOrderID = $result_explode[1]."<br />";
    

	//Connects to the database
	$mysqli = new mysqli("oniddb.cws.oregonstate.edu", "goncharn-db", $myPassword, "goncharn-db");
	if ($mysqli->connect_errno) {
		echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
	}
	
	//-------------- Add Product------------//
	if(!($stmt = $mysqli->prepare("UPDATE `product_order` SET  `productID` = ?, 
					`orderID` = ?, `quantOrdered` = ? 
					WHERE  `productID`= ? AND `orderID` = ? LIMIT 1;"))){
		echo "Prepare failed: "  . $stmt->errno . " " . $stmt->error;
	}
	
	if(!($stmt->bind_param("iiiii",$_REQUEST['productID'], $_REQUEST['orderID'],
							$_REQUEST['quantOrdered'], $UpdateProdID, $UpdateOrderID))){
		echo "Bind failed: "  . $stmt->errno . " " . $stmt->error;
	}
	
	if(!$stmt->execute()){
		echo "Execute failed: "  . $stmt->errno . " " . $stmt->error;
	}
	
	else {
		echo "<br>Updated: " . $stmt->affected_rows . " rows to [product_order] table.";
	}
	
	$stmt->close();
	
	//close connection
	$mysqli->close();
	
	echo "<br><br><a href='../Interface.php'>Back to Database</a>";
?>