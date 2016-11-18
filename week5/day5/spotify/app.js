$(document).ready(function(){
	// console.log("js file linked");

$(".js-search-form").on("submit", searchTrack);

$(".btn-play").on("click", playSong);

});

// =============================================
// =============================================
// =============================================


function searchTrack(x){
	x.preventDefault();
	// console.log("button submitted");

	var searchTerm = $(".js-search-track").val();
	// console.log(searchTerm);

	$.ajax({
		type: "GET",
		url:`https://api.spotify.com/v1/search?type=track&query=${searchTerm}`,
		success: showTrack,
		error: handleError,
	});
};

// ====================

function showTrack(apiResponse){
	// console.log("success!");
	// console.log(apiResponse);

	var artist = apiResponse.tracks.items[0].artists[0].name;
	// console.log(artist);
	$(".author").html(artist);

	var songTitle = apiResponse.tracks.items[0].name;
	// console.log(songTitle);
	$(".title").html(songTitle);

	var image = apiResponse.tracks.items[0].album.images[0].url;
	// console.log(image);
	$(".image").prop("src",image);

	var songAudio = apiResponse.tracks.items[0].preview_url;
	// console.log(songAudio);
	$(".js-song-Audio").prop("src",songAudio);

};

// ====================

function handleError(apiError){
	console.log("the was an error");
	console.log(apiError.responseText);
};
// =============================================
// =============================================

function playSong(){
	// console.log("button clicked");
	$(".js-song-Audio").trigger('play');
};













