function checkBoxClick(sender){
	if(sender.checked){
		$.post("updateUserInfo.php",
        {
          method: "seen",
          movieId: sender.parentNode.parentNode.getAttribute('id')
        },
        function(response){
            alert(JSON.parse(response).message);
            if(JSON.parse(response).status == 'pass'){
              console.log("OK");
                var prev_count = parseInt(document.getElementById('movie_count').innerHTML );
                document.getElementById('movie_count').innerHTML = prev_count+1;
            }
        });


	}
	else{
		$.post("updateUserInfo.php",
        {
          method: "unseen",
          movieId: sender.parentNode.parentNode.getAttribute('id')
        },
        function(response){
            alert(JSON.parse(response).message);
        });

	}
     	
}

function rateClick(sender){
  if(!sender.parentNode.parentNode.childNodes[3].childNodes[0].checked){
    alert('Please mark the movie as SEEN to RATE');
  }
  else{
    var rating = prompt("Please enter your rating", "0 to 10");
    sender.innerHTML = rating;
    if (rating!= parseInt(rating, 10) && rating >10)
      alert("data is not an integer");
    else{

      $.post("updateUserInfo.php",
            {
              method: "rate",
              movieId: sender.parentNode.parentNode.getAttribute('id'),
              rating : rating

            },
            function(response){
                alert(JSON.parse(response).message);
            }
      );

    }
  }

}


function recommendClick(sender){
  
      var username = prompt("Please enter username of the person to share");
      $.post("updateUserInfo.php",
            {
              method: "recommend",
              movieId: sender.parentNode.parentNode.getAttribute('id'),
              recommendeeName:username

            },
            function(response){
                alert(JSON.parse(response).message);
            }
      );

}
  

function validateSignUp(){
  var x = document.forms["signup-form"]["firstName"].value;
  if (x == null || x == "") {
    alert("Name must be filled out");
    return false;
  }

  var x = document.forms["signup-form"]["lastName"].value;
  if (x == null || x == "") {
    alert("Name must be filled out");
    return false;
  }

  var x = document.forms["signup-form"]["username"].value;
  if (x == null || x == "") {
    alert("username must be filled out");
    return false;
  }

  var x = document.forms["signup-form"]["password"].value;
  if (x == null || x == "") {
    alert("password must be filled out");
    return false;
  }

}


function validateLogin(){
  var x = document.forms["login-form"]["username"].value;
  if (x == null || x == "") {
    alert("username must be filled out");
    console.log(x);
    return false;
  }

  var x = document.forms["login-form"]["password"].value;
  if (x == null || x == "") {
    console.log(x);
    alert("password must be filled out");
    return false;
  }



}




