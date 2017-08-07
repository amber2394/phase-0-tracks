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