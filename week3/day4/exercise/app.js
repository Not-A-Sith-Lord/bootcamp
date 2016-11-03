class Car {
	constructor(model,noise,wheels){
		this.model = model;
		this.noise = noise;
		this.wheels = wheels;
	}

	makeNoise() {
		console.log(`${this.noise}`);
	}

}

myCar = new Car("go-cart","beep,beep","four");


myCar.makeNoise();