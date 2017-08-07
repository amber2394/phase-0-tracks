grocery_list = {}

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # 1. Create a hash
  # 2. Split the string at the spaces to create an array
  # 3. Iterate over the array and feed each piece of data into a hash
  # 4. Set default values all to 1
  # 5. Print the list to the console [can you use one of your other methods here?]
# output: A hash

def create_list(string)
    grocery_list = Hash.new
      string.split(" ").each do |item|
      grocery_list.store(item, 1)
      grocery_list
    end
end

# Method to add an item to a list
# input: list, item name, and quantity
# steps:
# 1. Feed the item name and quantity (or default) to the list
# output: An updated list

def add_item(list, item, quantity = 1)
    list.store(item, quantity)
    list
end

# Method to remove an item from the list
# input: list, the name of the item to remove
# steps:
# 1. Iterate over list and hash and remove item
# output: An updated list

def remove_item(list, item)
    list.delete(item)
    list
end

# Method to update the quantity of an item
# input: list, item name, updated quantity
# steps:
# 1. Feed the item and the new quantity to the list (it will overwrite existing quantity)
# output: An updated list

def update_item(list, item, quantity)
  list[item] = quantity
  list
end

# Method to print a list and make it look pretty
# input: list
# steps:
# 1. Iterate over the hash and puts to print
# output: A pretty list

def pretty_list(list)
  puts "Grocery List"
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
     list
end

create_list("apples peaches carrots milk bread butter")
add_item(grocery_list, "cereal", 1)
add_item(grocery_list, "peanut butter", 1)
remove_item(grocery_list, "cereal")
update_item(grocery_list, "peanut butter", 2)
pretty_list(grocery_list)

=begin
1. I definitely learned that I should be making pseudocode a little more specific. The better your pseudocode, the easier it will be to write your actual code.

2. Arrays are great when you have a simple list of data (milk, bread, cheese, etc.) however, since this challenge involves a grocery item AND an input a hash worked better because it allows your to store mulitple connected pieces of data.

3. A method returns the last bit of code inside of it.

4. You can pass nearly any data type into a method as an argument: integers, strings, booleans, etc.

5. A method can be used as an argument for another method.

6. I struggled with the general concept of methods for a while until I reviewed the Code Academy course. This challenge really put what I learned into practice and solidifed defining and using methods. This challenge especially solidified the syntax of methods.
=end