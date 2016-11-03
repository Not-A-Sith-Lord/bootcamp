var fs = require('fs');

function fileActions(err, file){ 
    if (err) {
        throw err;
    }
	
	var printEpisodes = JSON.parse(file);

	episodeNumbers = [];
	for (y = 0; y < printEpisodes.length ; y ++){
	episodeNumbers.push(printEpisodes[y]);
	};


	var sortedEpisodes = episodeNumbers.sort(function(episode1,episode2){
	return episode1.episode_number-episode2.episode_number;
	});

	var filteredEpisodes = [];
	for (z = 0; z < sortedEpisodes.length; z++){
		if (sortedEpisodes[z].rating >= 8.5){
			filteredEpisodes.push(sortedEpisodes[z]);
		}
	}

	var i;
	for (i = 0; i < filteredEpisodes.length ; i ++) {
  		console.log(filteredEpisodes[i].title);
  		console.log(`episode number ${filteredEpisodes[i].episode_number}`);
  		console.log(filteredEpisodes[i].description);

  		var roundedRating = Math.round(filteredEpisodes[i].rating);
  		console.log(`rating ${roundedRating}`);

  		var stars = ""
  		var x;

		for (x = 0; x < roundedRating; x += 1) {
				stars += "*"
		}
		console.log(stars);
  		console.log("");

	} 
}

fs.readFile("./episodes.json", 'utf8', fileActions);
