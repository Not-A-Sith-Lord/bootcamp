function caesarCipher (message) {
	
	letters = message.split("");
	newString = "";

	letters.forEach(function(letter){
		var char = ( letter.charCodeAt(0) );

		if (char < 97) {
			newChar = (String.fromCharCode(char));
			newString += newChar;
		}
		else if (char > 123) {
			newChar = (String.fromCharCode(char));
			newString += newChar;
		}
		else {
		var charChange = (char - 3);
		var newChar = (String.fromCharCode(charChange));
		newString += newChar;
		};
	})

	return (newString);


}

var encrypted = caesarCipher("brut$%^us");

console.log(encrypted);



