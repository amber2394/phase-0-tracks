// Write a function that takes a string parameter
// a) Function will be called reverse and take a parameter of str
// b) Set a variable called a equal to '';
// c) Set a variable i equal to the length of str with the condition if i is greater than or equal to 0, i will count backwords using i--
// Add variable a to str with the condition of i
// Return variable a

function reverse(str) {
  var a = '';
  for (var i = str.length - 1; i >= 0; i--)
    a += str[i];
  return a;
}

var reversedWord = (reverse("hello"));
console.log(reversedWord);
console.log(reverse("hello"))