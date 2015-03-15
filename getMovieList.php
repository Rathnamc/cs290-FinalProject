<?php
	require_once("db_connect.php");
	
	function getMovieList(){
		$con = mysqli_connect(db_host,db_user,db_password,db_name);	
		$movie_list = array();	
		$sql = 'SELECT * FROM movie_db ORDER BY rank';
		$result = mysqli_query($con,$sql);
		while($row = mysqli_fetch_assoc($result)){
			$movie = new stdClass();
			$movie->movieId = $row['movieId'];
			$movie->imdbUrl= $row['imdbUrl'];
			$movie->title = $row['title'];
			$movie->rank = $row['rank'];

			$movie->imdbRating = $row['imdbRating'];
			//$movie->plot  = $row['plot'];
			//$movie->cast = $row['cast'];
			//$movie->director = $row['director'];
			$movie->year = $row['year'];
			$movie->userRating =0;
			$num_users = 0;

			$sql_1 = "SELECT rating from user_lines WHERE movieId='$movie->movieId' ";
			$result_1 = mysqli_query($con,$sql_1);
			while($row_1 = mysqli_fetch_assoc($result_1)){
				if( $row_1['rating'] != 0 ){
					$movie->userRating += $row_1['rating'];
					$num_users+=1;
				}

			}
			if($num_users!=0)
				$movie->userRating = $movie->userRating/$num_users;

			array_push($movie_list,$movie);
		}
		return $movie_list;
	}
	
?>