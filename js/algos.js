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