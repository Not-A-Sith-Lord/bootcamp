console.log("were all tubed up!");

$(document).ready(function(){
	console.log("The page had finished loading.");
	promptForLocation();
	beginWatch();
});
// ============================
// ============================
// ============================

function beginWatch(){
	if("geolocation" in navigator) {
		navigator.geolocation.watchPosition(watchSuccess, watchError);
	}
}

function watchSuccess(locInfo){
	console.log("watch location");
	console.log(locInfo);

	var watchItem = `
	<li>
		latitude: ${locInfo.coords.latitude}
		<br>
		longitude: ${locInfo.coords.longitude}
	<li>`;
	$(".js-watch-list").append(watchItem);
}

function watchError (errInfo){
	console.log("watch error");
	console.log(errInfo);
}

// ============================
// ============================

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
	$(".js-lat").html(locatinInfo.coords.latitude);
	$(".js-lng").html(locatinInfo.coords.longitude);

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




