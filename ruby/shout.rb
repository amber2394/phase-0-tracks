=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + ":)"
  end
end

Shout.yell_angrily("NOOOOOO")
Shout.yelling_happily("YESSSS")
=end

module Shout
  def yell_praise(words)
    words + "!!!"
  end
  def yell_angrily(words)
    words + "!?!" + ":("
  end
end

class Preacher
  include Shout
end

class Angry_Student
  include Shout
end

donovan = Preacher.new
p donovan.yell_praise("Hallelujah, thank you Jesus")

fred = Angry_Student.new
p fred.yell_angrily("WHY WON'T THIS CODE WORK")