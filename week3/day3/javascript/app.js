var countCountriesFn = require("./lib/count-countries.js")


var countries = ["Puerto Rico","Puerto Rico",
					"USA","USA","USA",
					"France","Zimbabwe"];

// countries.forEach(function(aCountry){
// 	console.log(`Some of us are from ${aCountry}!!`);
// });

// var uppercaseCountries = countries.map(function(aCountry){
// 	return aCountry.toUpperCase();
// });

// uppercaseCountries.forEach(function(aCountry){
// 	console.log(`some people are form ${aCountry}`);
// });



// def count_countries(country,array)
// 	counter = 0
// 	array.each do |each_country|
// 		if each_country == country
// 			counter +=1
// 		end
// 	end
// 	counter
// end

console.log(countCountriesFn("USA",countries) === 3);
console.log(countCountriesFn("Puerto Rico",countries) === 2);
console.log(countCountriesFn("Japan",countries) === 0);








