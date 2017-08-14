// Horses
var horse_colors = ["Blue", "Pink", "Yellow", "Purple"];
var horse_names = ["Ed", "Lola", "Tilly", "Waffle"];
var complete_horse = {};

horse_colors.push("Red");
horse_names.push("Moxxy");

function horse_completer(names, colors) {
for (var i = horse_names.length - 1; i >= 0; i--) {
  complete_horse[names[i]] = colors[i]
  }
  console.log(complete_horse);
}

horse_completer(horse_names, horse_colors)

// Car Constructor Function

function Car(make, model, year) {
  console.log("Here is your new car:", this);

  this.make = make;
  this.model = model;
  this.year = year;

  this.horn = function() { console.log("HOOOOOOOOOOOOONK"); };

  console.log("VEHICLE INITIALIZATION IS COMPLETE");

}

// Calling the Car Constructor Function
console.log("Let's build a car ...");

var anotherCar = new Car("Nissan", "Maxima", 2012);
console.log(anotherCar);
console.log("Your new car's horn sounds like:");
anotherCar.horn();
console.log("----");

console.log("Let's build another car ...");
var yetAnotherCar = new Car("Dodge", "Charger", 2017);
console.log(yetAnotherCar);
console.log("Your new car's horn sounds like:");
yetAnotherCar.horn();
console.log("----")