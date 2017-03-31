
// Release 0

// Pseudocode
// 1. Create for loop to iterate through array values
// 2. If statement to check length of current value against a length variable that will be keeping track of the longest length of the array so far
// 3. If the condition is true, reassign the length variable and the variable that tracks the current longest value
// 4. Print longest value once loop is completed

// var arr = ["red", "green", "blue", "yellow"];
// var names = ["Bob", "Susan", "Mary", "Walt", "Musan"]
// var supplies = ["pencil", "ruler", "pen", "paper"]
// var zombie_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]
// var current_length = 0;
// var longest = 0;

// function wordLoop(arr) {
// 	for (var i = 0; i < arr.length; i++) { //creates loop
// 		if (arr[i].length > current_length) { //sets condition that says, if the the length of the current item is greater than the current_length variable, do the following:
// 			current_length = arr[i].length; //reassign the length of the current length var
// 			longest = arr[i]; //assign this item to the longest var
// 		}		
// 	}
// console.log(longest); //print longest once loop has run and the longest item has been determined from the array	
// };

// //Driver code
// wordLoop(zombie_supplies); //call this function


// Release 1 

// Pseudocode
// 1. Create compare function
// 2. Take in two objects
// 3. Loop through obj1
// 2. If statement to check if one of the key/value pairs is equal to the other using the == comparison operator
// 3. If condition is true, set the return to true
// 4. Else, return false

// var dog = {name: 'Roger', age: 3};
// var cat = {name: 'Roger', age: 2};
// var car = {model: 'Highlander', age: 5, make: "Toyota"};

// function objectCompare(obj1, obj2) {
// 	for (var prop in obj1) {
// 		if (obj1[prop] == obj2[prop]) {
// 			return true;
// 		}
// 	}	
// 	return false;
// }

// //Driver Code
// console.log(objectCompare(cat, dog));

// Release 2

//Pseudocode
// 1. Write function that takes in an integer
// 2. Create a word:
		//function 1: generate a random letter
		//create a random length between 1-10
		//push this into an array
		// do this however many times the argument specifies (loop)

function wordGenerator(int) {
	var rand_word = [];
    var alpha_str = "abcdefghijklmnopqrstuvwxyz"
	  var str = ''
  	var word_length = Math.floor(Math.random() * (10 - 1)) + 1;
  	for (var i = 0; i < int; i++) {
  		for (var i = 0; i < word_length; i++) {
  	        str += alpha_str.charAt(Math.floor(Math.random() * alpha_str.length));
  	  }
  	  rand_word.push(str);
  	  console.log(rand_word);
  	}
}

wordGenerator(3);

