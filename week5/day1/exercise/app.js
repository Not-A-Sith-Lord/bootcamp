console.log("shit");


$(document).ready(function(){
	// ^^^ when the page is done loading
	//  all JS EVENTS should be inside 

	// $(".button").on("click", function(){
	// 	$(".faded").append(`<img src="images/giphy-2.gif">`);
	// });

var phrases = [
	'derp.',
	'oi.',
	'holy shinto'
]

	function randomPhrase(){
 	var x = phrases[Math.floor(phrases.length * Math.random())];
		$("p").html(`${x}`);
	};

	randomPhrase();

	$(".change").on("click", randomPhrase);

});

