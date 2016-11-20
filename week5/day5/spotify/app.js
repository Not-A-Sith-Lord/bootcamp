$(document).ready(function(){
	// console.log("js file linked");

$(".js-search-form").on("submit", searchTrack);

$(".btn-play").on("click", playSong);

$(".js-song-Audio").on("timeupdate", printTime);

$(".js-button-artist").on("click", searchArtist);

$(".js-see-more-results").on("click", showMore);

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
	if ($(".js-song-Audio").hasClass('playing') === false){
		// console.log("no class")
		$(".js-song-Audio").trigger('play');
		$(".js-song-Audio").addClass('playing');
	}
	else{
		$(".js-song-Audio").trigger('pause');
		$(".js-song-Audio").removeClass('playing');
	}

};

// =============================================
// =============================================

function printTime () {
		var current = $('.js-song-Audio').prop('currentTime');
		// console.debug('Current time: ' + current);
		// console.log(current);
		$(".js-current-time").attr("value", current);
};

// =============================================
// =============================================

function searchArtist (){
	// console.log("artist button clicked");
	$('.js-modal').modal("show");


	var currentArtist = $(".author").html();
	// console.log(currentArtist);

	$.ajax({
		type: "GET",
		url:`https://api.spotify.com/v1/search?type=artist&query=${currentArtist}`,
		success: showArtist,
		error: handleError,
	});
};

// ===============

function showArtist(apiResponse){
	// console.log("success");
	// console.log(apiResponse.artists.items[0]);
	$(".modal-header").html(apiResponse.artists.items[0].name);
	$(".js-artist-image").prop("src",apiResponse.artists.items[0].images[0].url);

	$(".info").empty();

	var genres = apiResponse.artists.items[0].genres;
	var allGenres = genres.forEach(function(oneGenre){
		// console.log(oneGenre);
		$(".info").append(oneGenre,", ");
	});

	var followers = (apiResponse.artists.items[0].followers.total);
	// console.log(followers);
	$(".info").append("<br>","Followers:",followers);

	var popularity = (apiResponse.artists.items[0].popularity);
	// console.log(popularity);
	$(".info").append("<br>","popularity:",popularity);

};

// =============================================
// =============================================

function showMore(){
	console.log("showMore button clicked");

	var searchTerm = $(".js-search-track").val();
	// console.log(searchTerm);

		$.ajax({
		type: "GET",
		url:`https://api.spotify.com/v1/search?type=track&query=${searchTerm}`,
		success: showMoreInfo,
		error: handleError,
		});
};

// ===============

function showMoreInfo(apiResponse){
	// console.log(apiResponse);
	$(".js-modal2").modal("show");
	// console.log("show more innfo");
	var tracks = apiResponse.tracks.items;
	// console.log(tracks);
	$(".info").empty();
	var x = 0;
	for(x = 0; x < 5; x++){
		 $(".info").append(
		 	`<p>`,
		 	`<button class="x">`,
		 	tracks[x].name,
		 	"</button>",
		 	"</p>");
		};
		
		$(".x").on("click", showNewTrack);



};

// ===============

function showNewTrack(){
	console.log("show a new track button clicked");
	console.log($(".js-click-for-more"));


	 // var searchTerm = $(".js-click-for-more");
	 // console.log(tracks.artists[0].name);
	 // console.log(track);




	$.ajax({
		type: "GET",
		url:`https://api.spotify.com/v1/search?type=track&query=${"searchTerm"}`,
		success: displayNewTrack,
		error: handleError,
	});
};

// ===============

function displayNewTrack(apiResponse){
	// console.log("displaying new track");
	// console.log(apiResponse);



	// var artist = apiResponse.tracks.items[0].artists[0].name;
	// // console.log(artist);
	// $(".author").html(artist);

	// var songTitle = apiResponse.tracks.items[0].name;
	// // console.log(songTitle);
	// $(".title").html(songTitle);

	// var image = apiResponse.tracks.items[0].album.images[0].url;
	// // console.log(image);
	// $(".image").prop("src",image);

	// var songAudio = apiResponse.tracks.items[0].preview_url;
	// // console.log(songAudio);
	// $(".js-song-Audio").prop("src",songAudio);

};
	









