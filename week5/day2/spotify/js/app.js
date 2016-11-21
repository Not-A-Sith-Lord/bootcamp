$(document).ready(function(){

	$(".js-search-form").on("submit", searchArtist);
	$(".js-artist-albums").on("click", searchAlbums);

});

//=============================
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

//=============================

function handleError(errorThing){
	console.log("Fetch Characters Error");
	console.log(errorThing.responseText);
}

//=============================


function showArtists(a){
	// console.log("Success");
	// console.log(a.artists['items'][0]);
	var results = a.artists['items'];
	console.log(results)

	results.forEach(function(oneResult){
	 var artistInfo = `
	 <ul>
	<li class="js-artist-albums"> ${oneResult.name} </li>
	<li> <img src=" ${oneResult.images[0].url}"> </li>
	</ul>`
	 $(".js-artists-list").append(artistInfo);
	});

};

//=============================

function searchAlbums(){
	console.log("AAAAAAAAAAAAAAAAAAAAA");
}



