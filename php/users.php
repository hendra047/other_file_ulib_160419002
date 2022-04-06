<?php
	header("Access-Control-Allow-Origin: *");

	error_reporting(E_ERROR | E_PARSE);
	$conn = new mysqli("localhost", "native_160419002","ubaya","native_160419002");

	if ($conn->connect_errno) {
		echo json_encode(array('result'=>'ERROR', 'message'=>'Failed to connect DB : '.$conn->connect_error));
		die();
	}

	// $conn->set_charset('UTF8');
	extract($_GET);

	$stmt = $conn->query("SELECT * FROM users");
	$result = $stmt;
	if (isset($id)) {
		$stmt = $conn->prepare("SELECT * FROM users WHERE id = ?");
		$stmt->bind_param("s", $id);
		$stmt->execute();
		$result = $stmt->get_result();
	}

	if ($result->num_rows > 0) {
		$data = [];
		while ($obj = $result->fetch_object()) {
			$data[] = $obj;
		}
		echo json_encode($data);
	}

	$stmt->close();
	$conn->close();
?>