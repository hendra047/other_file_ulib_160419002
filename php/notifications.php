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
		$stmt = $conn->prepare("SELECT b.id, b.title, DATEDIFF(end_date, ?) as remaining_days FROM orders o INNER JOIN books b ON o.book_id = b.id WHERE is_paid = 1 AND DATEDIFF(end_date, ?) <= 7 AND DATEDIFF(end_date, ?) > 0 AND user_id = ?");
		$stmt->bind_param("ssss", $now, $now, $now, $user_id);
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