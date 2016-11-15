$(document).ready(function(){

	$(".js-search-form").on("submit", searchArtist);

});

//=============================
//=============================



function searchArtist(x){
	x.preventDefault();

	console.log("submitted");

	var searchTerm = $(".js-search-artist").val();
	console.log(searchTerm);

	

	$.ajax({
		type: "GET",
		url:`https://api.spotify.com/v1/search?type=artist&query=${searchTerm}`,
		success: showArtists,
		error: handleError,
	});
}

function showArtists(a){
	// console.log("Success");
	// console.log(a.artists['items'][0]);
	var result = a.artists['items'][0];
	console.log(result)

	 var artistInfo = `
	<li> 
	<p> ${result.name} </p>
	<img src=" ${result.images[0].url}">
	</li>`
	 $(".js-artists-list").append(artistInfo);
};


function handleError(errorThing){
	console.log("Fetch Characters Error");
	console.log(errorThing.responseText);
}



// function fetchCharacters(){
// 	$.ajax({
// 		type: "GET",
// 		url: "https://ironhack-characters.herokuapp.com/characters",
// 		success: showCharacters,
// 		error: handleError,
// 	});
// }

// function showCharacters(x) {
// 	console.log("Success!");
// 	console.log(x);

// 	$(".js-character-list").empty();
	
	// x.forEach(function(oneCharacter){
	// 	var characterItem =`
	// 	  <li> 
	// 	  <h3> ${oneCharacter.name} </h3>
	// 	  <p> Weapon: ${oneCharacter.weapon} </p>
	// 	  <p> Debt: ${oneCharacter.debt} </p>
	// 	  <p> ID: ${oneCharacter.id} </p>
	// 	  </li>`;
	// 	$(".js-character-list").append(characterItem);
	// });

// }

// function handleError(errorThing){
// 	console.log("Fetch Characters Error");
// 	console.log(errorThing.responseText);
// }