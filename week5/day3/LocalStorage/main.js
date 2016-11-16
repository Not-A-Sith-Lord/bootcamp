loadDefaultColor();

function loadDefaultColor(){
  if (window.localStorage.getItem("bg-color")){
    var savedColor = window.localStorage.getItem("bg-color");
    $("body").css("background-color", savedColor);
  }
}

var $color_button = $('.color-changer');

function changeColor(event){
  var color = $(event.target).data('color');
  $("body").css("background-color", color);
    window.localStorage.setItem("bg-color", color);

}

$color_button.on("click", changeColor);

//===================================== 
//===================================== 

$(".image").on("click",image);

loadDefaultImage();

var imageArray;

function loadDefaultImage(){

	if(window.localStorage.getItem("fav-image")){
		// var savedImage = window.localStorage.getItem("fav-image");
		imageArray = JSON.parse(window.localStorage.getItem("fav-image"));
		imageArray.forEach(function(oneImage){
			$(".image-container").append(oneImage);
		});
	 }	
		
	
	else {
		imageArray = [];
	};

};

function image(){
	 var favImage = prompt("Whats your favorite image?");
	 var favImageImg = `<img src="${favImage}">`;
	 console.log(favImage);
	 $(".image-container").append(favImageImg);
	 imageArray.push(favImageImg);

	 var stringifiedImageArray = JSON.stringify(imageArray);
	 window.localStorage.setItem("fav-image", stringifiedImageArray);

	 console.log(stringifiedImageArray);

	 // window.localStorage.setItem("fav-image", favImageImg);

};

// var position = {
//   latitude: 41.3997748,
//   longitude: 2.159874
// }

// var stringifiedPosition = JSON.stringify(position);
// console.log(stringifiedPosition);
// window.localStorage.setItem("position", stringifiedPosition);

// var jsonifiedPostion = JSON.parse(window.localStorage.getItem("position"));
// console.log(jsonifiedPostion.latitude);
