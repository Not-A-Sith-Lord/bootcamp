class Saxons {
	constructor(name){
		this.name = name
		this.health = Math.floor(Math.random() * 6) + 4  ;
		this.strength = Math.floor(Math.random() * 2) + 1  ;
	}
}

module.exports = Saxons;