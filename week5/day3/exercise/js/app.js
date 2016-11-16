$(document).ready(function(){
	console.log("The page had finished loading.");
	promptForLocation();

	
});

// =================================
// =================================
// =================================


function promptForLocation(){
	
	if ("geolocation" in navigator){
		var optionsThing = {
			enableHighAccuracy: true,
			// timeout: 3000,
		}

	navigator.geolocation.getCurrentPosition(showPositionInDom, showError, optionsThing);

	}

	else {
		var errorHtml = `
		<div class="alert alert-danger" role="alert">
			Your old...
		</div>`;
		console.log("geolocation not available");
		$("body").prepend(errorHtml);
	}
}

// ============================

function showPositionInDom(locatinInfo){
	console.log("Got position successfully");
	console.log(locatinInfo);
	var latCord = (locatinInfo.coords.latitude);
	var longCord = (locatinInfo.coords.longitude);
	var link = `https://maps.googleapis.com/maps/api/staticmap?zoom=20&size=400x600&center=${latCord},${longCord}`;

	$(".js-link").prop("src", link);
	console.log(latCord);
	console.log(longCord);
	console.debug("link interpolated");

}

// ============================

function showError (errorInfo){
	console.log("error getting position");
	console.log(errorInfo);

	var positionErrorHtml = `
	<div class="alert alert-danger">
	sorry there was an error retrieving your position.
	<button class="js-try-again"> try again </button>
	</div>`;

	$("body").prepend(positionErrorHtml);
	$(".js-try-again").on("click", function(){
		location.reload();
	});
}
