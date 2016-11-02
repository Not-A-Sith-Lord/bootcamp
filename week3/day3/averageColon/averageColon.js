function averageColon(string) {
	if (string === (null) ){
		return 0;
	}
	else {
	splitArray = string.split(/[\:$&]+/);
	var total = 0;
	splitArray.forEach(function(number){
		var x = parseInt(number,10);
		total += x;
	})
	var avg = total/splitArray.length;
	return avg;
};
};

module.exports = averageColon;