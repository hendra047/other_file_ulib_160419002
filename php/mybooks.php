<?php
	header("Access-Control-Allow-Origin: *");

	error_reporting(E_ERROR | E_PARSE);
	$conn = new mysqli("localhost", "native_160419002","ubaya","native_160419002");

	if ($conn->connect_errno) {
		echo json_encode(array('result'=>'ERROR', 'message'=>'Failed to connect DB : '.$conn->connect_error));
		die();
	}

	date_default_timezone_set('Asia/Jakarta');

    $dateTime = new DateTime();
    $now = $dateTime->format('Y-m-d H:i:s');


	// $conn->set_charset('UTF8');.
	extract($_GET);

	if (isset($user_id)) {
		$stmt = $conn->prepare("SELECT b.* FROM books b INNER JOIN orders o ON b.id = o.book_id WHERE user_id = ? AND is_paid = 1 AND end_date >= ?");
		$stmt->bind_param("ss", $user_id, $now);
		$stmt->execute();
		$result = $stmt->get_result();

		if ($result->num_rows > 0) {
			$data = [];
			while ($obj = $result->fetch_object()) {
				$data[] = $obj;
			}
			echo json_encode($data);
		}
	}

	$stmt->close();
	$conn->close();
?>