class Battle{
	constructor(vikings,saxons){
		this.vikings = vikings;
		this.saxons = saxons;
		this.numTurns = 0;
		this.deadVillagers = 0;
	
	}

	battle (){
		console.log(`It's time for Glory, the viking rush into battle`);
		var x;
		for (x = 0; x<this.vikings.length ; x++){
			console.log(`${this.vikings[x].name} shouts his war cry: ${this.vikings[x].warcry}`);
		}
		var theVillagers = this.saxons;
		var theWarriors = this.vikings;


		var Warrior = theWarriors[Math.floor(Math.random()*theWarriors.length)];
		var Villager = theVillagers[Math.floor(Math.random()*theVillagers.length)];


		while (Warrior.health > 0 && Villager.health > 0) {
			Warrior.health = Warrior.health - Villager.strength;
			Villager.health = Villager.health - Warrior.strength;
			this.numTurns++;	
		}

		var v;
		for (v = 0; v < theVillagers.length; v++){
			if (theVillagers[v].health < 1){
				this.deadVillagers++;
			}
		}
		
		this.saxons = theVillagers.filter(function(villager){
			return villager.health > 0;
		});

		this.vikings = theWarriors.filter(function(warrior){
			return warrior.health > 0;
		});

	
		console.log("");
		console.log("");
		console.log(`${Warrior.name} ${Warrior.health},${Villager.name} health ${Villager.health}`);
		console.log(`there are ${this.deadVillagers} dead saxons`);
		console.log(`there have been ${this.numTurns} turns`);

		if (this.saxons.length > 0 && this.vikings.length > 0 ){
			this.battle();
		}
		// console.log("\n\nhhhhhhhhhhhhhhhhhhh");

		// console.log(theVillagers);

		// console.log(theWarriors);



	}
}

module.exports = Battle;

// if villagers are still in array, call Battle again
// how to save warrior health for the next turn?


