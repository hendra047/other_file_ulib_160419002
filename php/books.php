<?php
	header("Access-Control-Allow-Origin: *");

	error_reporting(E_ERROR | E_PARSE);
	$conn = new mysqli("localhost", "native_160419002","ubaya","native_160419002");

	if ($conn->connect_errno) {
		echo json_encode(array('result'=>'ERROR', 'message'=>'Failed to connect DB : '.$conn->connect_error));
		die();
	}

	// $conn->set_charset('UTF8');.
	extract($_GET);

	$stmt = $conn->query("SELECT * FROM books");
	$result = $stmt;
	if (isset($book_id) && isset($user_id)) {
		$stmt = $conn->prepare("SELECT *, (IF((SELECT bm.user_id FROM bookmarks bm WHERE bm.user_id = ? && bm.book_id = b.id) IS NOT NULL,1,0)) as bookmarked FROM books b WHERE b.id = ?");
		$stmt->bind_param("ss", $user_id, $book_id);
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