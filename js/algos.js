
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
// 2. If statement to check if one of the key/value pairs is equal to the other using the || comparison operator
// 3. If condition is true, set the return to true
// 4. Else, return false

var dog = {name: 'Spot', 'age': 3, isGoodDog: true};
var cat = {name: 'Kitty', 'age': 3, isGoodCat: true};
var car = {make: 'Toyota', 'model': 'Highlander', 'age': 3};

function structureCompare(datastruc1, datastruc2) {
	if (datastruc1.key == datastruc2.key) {
		return true;
	} else {
		return false;
	}
}

structureCompare(dog, car);



