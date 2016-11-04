class pitFight{
	constructor(vik1,vik2){
		this.vik1 = vik1;
		this.vik2 = vik2;
	}

	startFight(){
		
		setTimeout(after2Seconds, 2000);
		setTimeout(after3Seconds.bind(this), 3000);
		setTimeout(after5Seconds.bind(this), 5000);

		console.log("A long time ago in another Dimension...")
		function after2Seconds () {
  		console.log("Heavy Metal Space Vikings plunder the Galaxy");
		}
		function after3Seconds () {
  		console.log(`Two warriors ${this.vik1.name} and ${this.vik2.name} spar for the upcoming raid`);
		}

		function after5Seconds () {
		var vik1NewHealth = this.vik1.health;
		var vik2NewHealth = this.vik2.health;
		var x = 0;
		while (vik1NewHealth > 5 && vik2NewHealth > 5){
			vik1NewHealth = vik1NewHealth - this.vik2.strength;
			vik2NewHealth = vik2NewHealth - this.vik1.strength;
			x ++;
			console.log(`${this.vik1.name}'s health is ${vik1NewHealth},and ${this.vik2.name}'s health is ${vik2NewHealth} after round ${x}`);
			}
		console.log("Settle down bro's. this is only a drill");	
		}
	}

}

module.exports = pitFight;