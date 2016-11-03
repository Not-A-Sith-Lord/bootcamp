var Viking = require("./lib/viking.js");
var pitFight = require("./lib/pitfight.js");

var Magnus = new Viking("Magnus",20,3);
var Ragnar = new Viking("Ragnar",15,5);

var Fight1 = new pitFight(Magnus,Ragnar);

Fight1.startFight();