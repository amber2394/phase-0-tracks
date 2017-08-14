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