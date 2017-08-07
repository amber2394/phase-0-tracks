=begin
  Word Game Pseudocode:

1. Create a class called "WordGame"

2. Assign variables for:
  a) The initial word (user1_input)
  b) The guess (user2_input)
  c) The passed guess (an array: passed_guesses = [])

3. Create a method that sets the number of guesses equal to the word length of user1_input.

4. Create a method to compare user2_input with user1_input.

5. Create a method that adds user1_input, if correct to "_ _ _ _ _ _ _" which would become "_ _ _ c _ _ _" after the user enters a guess of "c". Else, the user should recieve a message that states "Aw, wrong guess, try again." The console should also print out the number of remaining guesses the users has left.

6. If user wins print out "You got it! Congratulations!"

=end

class WordGame

def initialize(user1_input)
    @user1_input = user1_input.split("")
    @passed_guesses = []
    @guesses = 7 + user1_input.length
    @tries = 0
    @hidden = @user1_input.map { |x| x = "_"}
  end