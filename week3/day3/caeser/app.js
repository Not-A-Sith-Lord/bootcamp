function caesarCipher (message,shift= -3) {
	
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
		var charChange = (char + shift);
		if (charChange > 122) {
			var zChar = (charChange - 26);
			newChar = (String.fromCharCode(zChar));
			newString += newChar;
		}
		else if (charChange < 97) {
			var aChar = (charChange + 26);
			newChar = (String.fromCharCode(aChar));
			newString += newChar;
		}
		else {
			var charChange = (char + shift)
			newChar = (String.fromCharCode(charChange));
			newString += newChar;

		};
		};
	})

	return (newString);

}

var encrypted = caesarCipher("a", 6);

console.log(encrypted);



