class pitFight{
	constructor(vik1,vik2){
		this.vik1 = vik1;
		this.vik2 = vik2;
	}

	startFight(){
		var vik1NewHealth = this.vik1.health;
		var vik2NewHealth = this.vik2.health;


		while (vik1NewHealth > 5 && vik2NewHealth > 5){
			vik1NewHealth = vik1NewHealth - this.vik2.strength;
			vik2NewHealth = vik2NewHealth - this.vik1.strength;
			console.log(`${vik1NewHealth}, ${vik2NewHealth}`);
		}
		console.log("the fight is over")	
	}

}

module.exports = pitFight;