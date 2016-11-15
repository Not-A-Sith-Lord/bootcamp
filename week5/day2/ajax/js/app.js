$(document).ready(function(){

	$(".js-fetch-characters").on("click", fetchCharacters);
	$(".js-ackbar-form").on("submit", saveAckbar);
	$(".js-add-character-form").on("submit", saveCharacter);


});

// ========== ^^^^^^DOC READY^^^^^^^^^
// ======================================

function saveCharacter(event){
	event.preventDefault();

	var debtInput = $(".js-add-character-debt").val();
		if (debtInput === ""){
			debtInput = "False";
		}

	var characterInfo = {
		name: $(".js-add-character-name").val(),
		occupation: $(".js-add-character-occupation").val(),		
		weapon: $(".js-add-character-weapon").val(),
		debt: debtInput,
	};

	console.log(characterInfo);

	$.ajax({
		type: "Post",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: characterInfo,
		success: showCharacter,
		error: handleError,		
	});

}

function handleError(errorThing){
	console.log("Fetch Characters Error");
	console.log(errorThing.responseText);
}

function showCharacter (api){
	console.log("save character success")
	console.log(api);
}

// ================================
// ================================

function saveAckbar (eventThing){
	eventThing.preventDefault();

	var weaponInput = $(".js-ackbar-weapon").val();
	if(weaponInput === ""){
		weaponInput = "Memes";
	}


	var ackbarInfo = {
		name: "Admiral Ackbar",
		occupation: "Rebel Fleet Admiral",
		weapon: weaponInput,
	};


	$.ajax({
		type: "Post",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: ackbarInfo,
		success: showAckbar,
		error: handleError,
	});
}

function showAckbar(infoFromApi){
	console.log("Save Ackbar success");
	console.log(infoFromApi);
}

// ================================
// ================================

function fetchCharacters(){
	$.ajax({
		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		success: showCharacters,
		error: handleError,
	});
}

function showCharacters(x) {
	console.log("Success!");
	console.log(x);

	$(".js-character-list").empty();
	
	x.forEach(function(oneCharacter){
		var characterItem =`
		  <li> 
		  <h3> ${oneCharacter.name} </h3>
		  <p> Weapon: ${oneCharacter.weapon} </p>
		  <p> Debt: ${oneCharacter.debt} </p>
		  <p> ID: ${oneCharacter.id} </p>
		  </li>`;
		$(".js-character-list").append(characterItem);
	});

}

// function handleError(errorThing){
// 	console.log("Fetch Characters Error");
// 	console.log(errorThing.responseText);
// }