// Ruby has lots of handy functions like .reverse, but in JavaScript, we mostly have to write our own. In comments, pseudocode a function that takes a string as a parameter and reverses the string. reverse("hello"), for example, should return "olleh". This isn't a task specific to JavaScript -- your pseudocode should be in plain English and use phrases like "for each" instead of JavaScript-specific terms. Remember that you can add strings in JavaScript, so '' + 'a' would result in the string 'a'.

// JS Reverse Function
// - take in the string as an argument
// - asseses the length of the string
// - loops through each character in the string
// - use i-- to return characters at a reversed position

var str = "hello";

var reverse = function(string){
	for (var i = str.length; i >= 0; i--) {
		console.log(str[i]);
 	}
};

reverse("hello");