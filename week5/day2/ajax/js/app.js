$(document).ready(function(){

	$(".js-fetch-characters").on("click", fetchCharacters);

});

// ========== ^^^^^^DOC READY^^^^^^^^^
// ======================================

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

function handleError(errorThing){
	console.log("Fetch Characters Error");
	console.log(errorThing.responseText);
}