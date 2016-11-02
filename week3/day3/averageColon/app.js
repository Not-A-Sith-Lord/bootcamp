var averageColon = require("./averageColon.js")


var numbers = '80:70:90:100';
console.log(averageColon(numbers) === 85);

console.log(averageColon('80&70&90&100')=== 85);
console.log(averageColon('80:70$90:100')=== 85);

console.log(averageColon() === 0);
