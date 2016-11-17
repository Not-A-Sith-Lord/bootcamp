console.log("audiovideo working");

$(document).ready(function(){
	console.log("The page had finished loading.");

	$(".js-add-video").on("click", getVideo);

	function getVideo(){
	console.log("button clicked");
	var newVideo = prompt("What video do you want to add?");
	var newVideoTag = `<video controls src="${newVideo}"></video>`;
	$(".js-all-videos").append(newVideoTag);
	};

	
});






	 // var favImageImg = `<img src="${favImage}">`;
