console.log("DERP!");
// alert("alert");


$(document).ready(function(){
	// ^^^ when the page is done loading
	//  all JS EVENTS should be inside 


	$(".button").on("click", function(){
		$(".faded").append(`<img src="images/giphy-2.gif">`);
	});

	$(".js-tacos").on("click", function(){
		$(".js-small").append("tacos");
		alert("Tacos");
	})

	$(".js-empanada").click(function(){
		$("#title").append (`
			<span> empanadas </span>
			<a href="#"> see more </a>`
			);
		alert("empanada time");
	})

	$("#cookies").on("click",buttonMessage);

	$("js-unicorn-image").on("click",changeUnicorn);
	function changeUnicorn(){
		$(".js-unicorn-image").attr("src", "images/200w-1.gif");
	}

	$(".fade-out").click(function(){
		$(".faded").fadeToggle(3000);
	});


	// $(".unicorn-mode").click(function() {
	// 	$(".faded").
	// })		



 
 

    $(".faded").on("click", spectrum);

function spectrum(){
    var hue = 'rgb(' + (Math.floor(Math.random() * 256)) + ',' + (Math.floor(Math.random() * 256)) + ',' + (Math.floor(Math.random() * 256)) + ')';
    $('.faded').animate( { backgroundColor: hue }, 1000);
    spectrum();








};

function buttonMessage() {
	var cookieContent = `
	<div class="popup">

	<p> cookies are good because</p>
	<ul>
		<li> they just are </li>
		<li> dont question it </li>
	</ul>

	</div>`;

	$("body").append(cookieContent);

}});


