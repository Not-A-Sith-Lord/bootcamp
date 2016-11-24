// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
	 currentCalories = ($(".calories").data("calories"));
	$(".js-add-ingredient").on("click", AddIngredient);

});

// ==============================================
// ==============================================
// ==============================================

function AddIngredient(event){
	var ingredient_id = ($(this).data("name"));
	var id = ($(".id").data("id"));
	// console.log(id);
	$.ajax({
		type: "POST",
		url:` /api/sandwiches/${id}/ingredients/add`,
		data: {ingredient_id: ingredient_id},
		success: Added,
		error: handleError,
	});
};

// =========

function Added(apiResponse){
	console.log("success");
	console.log(apiResponse);

	var content = apiResponse.ingredients[apiResponse.ingredients.length - 1].name;

	var calories = apiResponse.ingredients[apiResponse.ingredients.length - 1].calories;
	currentCalories = calories + currentCalories;

	$(".calories").html(currentCalories);	
	$(".ingredient_list").append(`<li>${content}</li>`);
}

// =========

function handleError(apiError){
	console.log("there was an error");
	console.log(apiError.responseText)
}

// ==============================================
// ==============================================














