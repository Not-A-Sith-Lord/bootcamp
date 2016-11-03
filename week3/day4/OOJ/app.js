var Animal = require("./lib/animal.js")


///////////////////// object literals

// var weezy = {
// 	name: "weezy",
// 	breed: "yorkie",
// 	sound: "yarf",

// 	chase: function(){
// 		console.log(`${this.name} is chasing squirrels.`);
// 	},

// 	bark: function() {
// 		console.log(this.sound);
// 	},
// };


//=================================================

var weezy = new Animal("weezy","yorkie","yarf");

weezy.bark();
weezy.chase();
