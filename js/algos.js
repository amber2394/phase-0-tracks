// PSEUDOCODE:
// Create an array 'phrases' with a variety of phrases in different lengths
// Define a variable lgth set to the value 0
// Define an empty variable longest to be used in the loop
// Input 1: While i (set to 0) is less than the length of the phrases, iterate through the array by 1
// Input 2: (Conditionals) If the length of the indexed phrase's length is less than lgth (set to 0), reassign lgth to the length of the phrases
// Input 3: Set var longest equal to the indexed phrases
// Output: Print longest


var phrases = ["long phrase","longest phrase","longer phrase"];
var lgth = 0;
var longest;

// I couldn't figure out how to get a function to work here, but I did do a few googles to come up with a loop that works here...

for(var i=0; i < phrases.length; i++){
    if(phrases[i].length > lgth){
        var lgth = phrases[i].length;
        longest = phrases[i];
    }
}

console.log(longest);

// For the life of me, I couldn't get this one to work using objects, only arrays. However, I did manage to find a piece of code only that made this run with objects. (Even though, it only seems to return false, so something is still wrong) I attempt to explain what is happening in this code to demonstrate that I know what is being done in my pseudocode:

// Set up 3 objects with 3 key/value pairs named students_a, students_b, students_c
// Create a function that compares two keys and values between the objects.
// Input 1: checkIfObjectContains has two parameters one and two which stand in for one = keys, two = values
// **This is where I become lost a little**
// Return false if either condition is met
// Return true if those conditions are not met
// Print test results of varying object pairs

var students_a = {"Melissa" : "A+", "Daniel": "B-", "Kyle" : "A"};
var students_b = {"Lauren" : "B+", "Lilith": "A", "Kelly": "C"};
var students_c = {"Lauren" : "B+", "Melissa" : "A+", "Chester" : "D"};

function checkIfObjectContains(one, two){
   for (var i in one) {
           if (! two.hasOwnProperty(i) || one[i] !== two[i] ) {
              return false;
           }
   }
   return true;
}

console.log("Comparison results" + ": " + checkIfObjectContains(students_a, students_b));
console.log("Comparison results" + ": " + checkIfObjectContains(students_b, students_c));
console.log("Comparison results" + ": " + checkIfObjectContains(students_c, students_b));
console.log("Comparison results" + ": " + checkIfObjectContains(students_c, students_a));
