$(document).on("ready", function(){
	$(".js-show-pokemon").on("click", function(){
		var pokemonUri = $(this).data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
});

PokemonApp.Pokemon = class {
	constructor (pokemonUri) {
		this.apiUrl = pokemonUri;
	}
	render () {
		console.log(`rendering pokemon with url: ${this.apiUrl} `);
		$.ajax ({
			url: `/${this.apiUrl}`,
			success: PokemonApp.showPokemonModal,
			error: PokemonApp.handleError,
		});
	}
};

PokemonApp.showPokemonModal = function(apiResult){
	console.log("pokemon API success!");

	$(".js-pkmn-name").text(apiResult.name);
	$(".js-pkmn-number").text(`#${apiResult.pkdx_id}`);
	$(".js-pkmn-height").text(apiResult.height);
	$(".js-pkmn-weight").text(apiResult.weight);
	$(".js-pkmn-hitPoints").text(apiResult.hp);
	$(".js-pkmn-attack").text(apiResult.attack);
	$(".js-pkmn-defense").text(apiResult.defense);
	$(".js-pkmn-spAtk").text(apiResult.sp_atk);
	$(".js-pkmn-spDef").text(apiResult.sp_def);
	$(".js-pkmn-speed").text(apiResult.speed);


	var types = (apiResult.types);

	function addTypes(){
		$(".js-pkmn-types").empty();
		types.forEach(function(oneType){
			$(".js-pkmn-types").append(`${oneType.name} `);
		});
	}
	addTypes();
	$(".js-pokemon-modal").modal("show");

	console.log(apiResult);

	var allDerp = apiResult.descriptions;

	var sorted = allDerp.sort(function(a,b){
		if(a.name < b.name){
			return 1;
		}
		else if(b.name < a.name){
			return -1;
		}
		else {
			return 0;
		}
	});

var descriptionUrl = (sorted[0].resource_uri);
console.log(descriptionUrl);
	







};

PokemonApp.handleError = function(errorThang){
	console.log("API error");
	console.log(errorThang.responseText);
};

