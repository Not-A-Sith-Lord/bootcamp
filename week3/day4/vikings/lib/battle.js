class Battle{
	constructor(vikings,saxons){
		this.vikings = vikings;
		this.saxons = saxons;
		this.turns = Math.floor(Math.random()*(8-5+1)+5);
	}

	battle (){
		console.log(`It's time for Glory, the viking rush into battle`);
		var x;
		for (x = 0; x<this.vikings.length ; x++){
			console.log(`${this.vikings[x].name} shouts his war cry: ${this.vikings[x].warcry}`);
		}

		var Warrior = this.vikings[Math.floor(Math.random()*this.vikings.length)];
		var Villager = this.saxons[Math.floor(Math.random()*this.saxons.length)];

		var numTurns = 0;
		var deadVillagers = 0;

		var WarriorHealth = Warrior.health;
		var VillagerHealth = Villager.health;

		while ((WarriorHealth > 0 && VillagerHealth > 0) && numTurns < this.turns){
			WarriorHealth = WarriorHealth - Villager.strength;
			VillagerHealth = VillagerHealth - Warrior.strength;
			numTurns++;
			if (VillagerHealth <= 0) {
				deadVillagers ++;
			}

		}
		console.log("");
		console.log("");
		console.log(`${Warrior.name} ${WarriorHealth},${VillagerHealth}`);
		console.log(`there are ${deadVillagers} dead saxons`);
		console.log(`there have been ${numTurns} turns`);
	
	}
}

module.exports = Battle;

// remove dead villager from the array
// if villagers are still in array, call Battle again
// else end the battle and display casualties
// how to save warrior health for the next turn?


