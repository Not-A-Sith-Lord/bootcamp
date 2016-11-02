function caesarCipher (message) {
	
	letters = message.split("");
	newString = "";

	letters.forEach(function(letter){
		var char = ( letter.charCodeAt(0) );
		var charChange = (char - 3);
		var newChar = (String.fromCharCode(charChange));
		newString += newChar;
	})

	return (newString);


}

var encrypted = caesarCipher("brutus");

console.log(encrypted);



