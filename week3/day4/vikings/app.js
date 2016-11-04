var Viking = require("./lib/viking.js");
var pitFight = require("./lib/pitfight.js");
var Saxon = require("./lib/saxons.js");
var Battle = require("./lib/battle.js");

//=============================================
//            Vikings-Pit Fight

var allVikings = [];

var Magnus = new Viking("Magnus",20,3,"Neeerrrds!");
// var Ragnar = new Viking("Ragnar",15,5,"Make America Great Again!");

allVikings.push(Magnus);
// allVikings.push(Ragnar);

//=============================================
//            Pit Fight

// var Fight1 = new pitFight(Magnus,Ragnar);
// Fight1.startFight();

//=============================================
//            Saxons


var allSaxons = [];

var Saxon1 = new Saxon();
var Saxon2 = new Saxon();
var Saxon3 = new Saxon();
var Saxon4 = new Saxon();
var Saxon5 = new Saxon();
var Saxon6 = new Saxon();
var Saxon7 = new Saxon();
var Saxon8 = new Saxon();
var Saxon9 = new Saxon();
var Saxon10 = new Saxon();
var Saxon11 = new Saxon();
var Saxon12 = new Saxon();
var Saxon13 = new Saxon();
var Saxon14 = new Saxon();
var Saxon15 = new Saxon();
var Saxon16 = new Saxon();

allSaxons.push(Saxon1);
allSaxons.push(Saxon2);
allSaxons.push(Saxon3);
allSaxons.push(Saxon4);
allSaxons.push(Saxon5);
allSaxons.push(Saxon6);
allSaxons.push(Saxon7);
allSaxons.push(Saxon8);
allSaxons.push(Saxon9);
allSaxons.push(Saxon10);
allSaxons.push(Saxon11);
allSaxons.push(Saxon12);
allSaxons.push(Saxon13);
allSaxons.push(Saxon14);
allSaxons.push(Saxon15);
allSaxons.push(Saxon16);

//=============================================
//            battle

the_slaughter = new Battle(allVikings,allSaxons);

the_slaughter.battle();

















