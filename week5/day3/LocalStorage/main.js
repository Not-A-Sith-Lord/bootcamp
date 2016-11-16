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

function loadDefaultImage(){
	if(window.localStorage.getItem("fav-image")){
		var savedImage = window.localStorage.getItem("fav-image");
		$(".image").prop("src",savedImage);
	}
}

function image(){
	 var favImage = prompt("Whats your favorite image?");
	 console.log(favImage);
	 $(".image").prop("src",favImage)
	  window.localStorage.setItem("fav-image", favImage);

};

