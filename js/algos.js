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