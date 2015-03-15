<?php
	session_start();
	header("Access-Control-Allow-Origin:*");
    header("Access-Control-Allow-Methods:*"); 
	require_once("db_connect.php");
	
	
	$userId = $_SESSION['userId'];
	
	if($_REQUEST){
		//$userId = $_SESSION['userId'];

		$con = mysqli_connect(db_host,db_user,db_password,db_name);			
		$response = new stdclass();
		$method = $_REQUEST['method'];
		$movieId = $_REQUEST['movieId'];

		if($method == 'rate'){
			$rating = $_REQUEST['rating'];
			$sql = " DELETE FROM user_lines WHERE userId = '$userId' AND movieId = '$movieId' ";
			mysqli_query($con, $sql);
	  		$sql = "INSERT INTO user_lines (userId,rating,movieId) VALUES ('$userId','$rating','$movieId') ON DUPLICATE KEY UPDATE rating = '$rating' ";
			if (mysqli_query($con, $sql)) {
	  			$response->status = 'pass';
	  			$response->message = 'Your rating has been added';
	  			echo json_encode($response);
	  			return;
			}
			else{
				$response->status = 'fail';
	  			$response->message = 'Your rating could not be updated.Please try later';
	  			echo $response; 
	  			return;

			}

		}

		else if($method == 'seen'){
			$sql = "INSERT INTO user_lines (userId,rating,movieId) VALUES ('$userId',0,'$movieId')";
			if (mysqli_query($con, $sql)) {
	  			$response->status = 'pass';
	  			$response->message = 'Your view has been counted';

	  			$sql_1 = "UPDATE users SET seen = seen + 1 WHERE userId='$userId' ";
				$result = mysqli_query($con,$sql_1);

	  			echo json_encode($response);
	  			return;
			}
			else{
				
				$response->status = 'fail';
	  			$response->message = 'Your view could not be updated. Please try later';
	  			echo json_encode($response);
	  			return;

			}
		}

		else if($method == 'unseen'){
			$sql = "DELETE FROM user_lines WHERE userId='$userId' AND movieId='$movieId' ";
			if (mysqli_query($con, $sql)) {
	  			$response->status = 'pass';
	  			$response->message = 'Your view has been removed';

	  			$sql_1 = "UPDATE users SET seen = seen - 1	WHERE userId='$userId' ";
				$result = mysqli_query($con,$sql_1);
	  			echo json_encode($response);
	  			return;
			}
			else{
				$response->status = 'fail';
	  			$response->message = 'Your view could not be updated.Please try later';
	  			echo $response;
	  			return;

			}
		}


		else if($method == 'recommend'){ 
			$recommendeeName = $_REQUEST['recommendeeName'];
			$sql = "SELECT * FROM users WHERE  username = '$recommendeeName' ";
			$result = mysqli_query($con, $sql);
			if (mysqli_num_rows($result) == 0) {
	  			$response->status = 'fail';
	  			$response->message = 'The username does not exist';
	  			echo json_encode($response);
	  			return;
			}
			else{
				$row = mysqli_fetch_assoc($result);
				$recommenderId = $userId;
				$recommendeeId  = $row['userId'];
				$movieId = $_REQUEST['movieId'];
				$response->status = 'pass';
	  			$response->message = 'Recommendation has been sent to ' . $recommendeeName;
	  			$sql_1 = "INSERT INTO  recommendations (recommenderId,recommendeeId,movieId) VALUES ('$recommenderId','$recommendeeId','$movieId')";
	  			$result_1 = mysqli_query($con,$sql_1);
	  			echo json_encode($response);
	  			return;

			}			
				

		}
	}
	


?>