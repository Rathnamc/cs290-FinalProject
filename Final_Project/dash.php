<!DOCTYPE html>
<html>
	<head>
		<title>(<?php echo count($user->seenMovieList); ?>)TrackMovies - One stop for movie buffs</title>
	    <link rel='stylesheet' href='http://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.css'>
	    <link rel='stylesheet' href='./css/dash.css'>
	    <link rel='shortcut icon' href='./images/logo.png'>
	    
		<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.11.2.min.js"></script>
	 	<script src = 'js/script.js'></script>
	    <script>
	    	function logout(){
	    		window.location = 'logout.php';
	    	}
	    </script>
	</head>

	<body style="font-family: 'Lato', Calibri, Arial, sans-serif;">


		<div class="wrapper">
			<div class='header'>
				<div class='symbol'>
					<img src='./images/logofull.png' width='338' height='90'></img>
				</div>
				
				<div class='udetails'>
					<button type="submit" onclick="logout()" style="background-image: url(&quot;images/logoutbutton.png&quot;); margin-top:35px; margin-right:10px; height: 29px; width: 80px;border: 2px; border-radius: 5px"></button>
				</div>
				<section class='welc'>
					<p><?php echo $user->firstName;?>'s List (<span id='movie_count'><?php echo count($user->seenMovieList); ?></span>/250)</p>
				</section>
			</div>
			<div class='cleartop'>

			</div>
			<div class='container'>
				<section class='mlist'>

					
					<table id='myTable' class="flat-table flat-table-2" style="text-align:center">
						<thead>	
							<tr>
								<th>Rank</th>
								<th>Seen</th>
								<th>Year</th>
								<th>Name</th>
								<th>Your Rating</th>
								<th>Avg Rating</th>
								<th>IMDB Rating</th>
								<th>Recommend</th>
							</tr>
						</thead>
						<tbody style="background: none repeat scroll 0% 0% rgb(255, 188, 99)";>
							<tr>
								<?php
									foreach($movieList as $movieTitle){ ?>
										<tr id= "<?php echo $movieTitle->movieId; ?>">
										<td><?php echo $movieTitle->rank; ?></td>
										<td><input type="checkbox" onclick= "checkBoxClick(this)" <?php 
																										foreach($user->seenMovieList as $seenMovie){
																											if($seenMovie->movieId == $movieTitle->movieId)
																												echo "checked='checked'";
																										}?>></td>										
										<td><?php echo $movieTitle->year; ?></td>
										<td><a href = "<?php echo $movieTitle->imdbUrl; ?>" target="_blank"><?php echo $movieTitle->title; ?></a></td>
										<td>
											<a onclick="rateClick(this)"><?php 
												$sql = "SELECT * FROM user_lines WHERE userId='$userId' AND movieId = '$movieTitle->movieId'";
												$result = mysqli_query($con,$sql);
												$row = mysqli_fetch_assoc($result);
												$rating = $row['rating'];
												if($row['rating'] == 0)
													echo 'RATE';
												else
													echo $rating;

											?></a>
										</td>
										<td><?php echo  number_format($movieTitle->userRating, 1, '.', '');; ?></td>
										<td><?php echo $movieTitle->imdbRating; ?></td>
										<td><img src='images/share.png' onclick= " recommendClick(this)"></img></td>    
										</tr>
									<?php
									} 
								?>
						</tbody>
					</table>
				</section>
				<section class='extra'>
					<h1>Recommendations</h1>
					<hr size='8px' color='#FFBC63'></hr>
					<table class="flat-table flat-table-3" width='100%' id="reco">
						<tbody>
							<?php
								foreach( $user->recommended as $recommender){
									?>
									<tr>
										<td>
											<?php echo $recommender->username.' recommended you '.$recommender->title; ?>
										</td>
									</tr>						
									
								<?php
								}
							?>
						
						</tbody>
					</table>
					<br>
					<h1>Top Movie Watchers</h1>
					<hr size='8px' color='#FFBC63'></hr>
					<table class="flat-table flat-table-3" width='100%' style="text-align:center;cursor:pointer">
						<thead>	
							<tr>
								<th>Username</th>
								<th>Movies Watched</th>
							</tr>
						</thead>
						<tbody>
							<?php
								foreach($topUsers as $topUser){ ?>
									<tr>
										<td><?php echo $topUser->username ; ?></td>
										<td><?php echo $topUser->seen ; ?></td>
									</tr>

								<?php }

							?>
						</tbody>
					</table>
				</section>
			</div>
			<div class='footer'>
				<div >
					<div class='cleartop'style="background-color:rgb(25, 76, 115)">
					</div>
				</div>
			</div>
		</div>
	</body>
</html>