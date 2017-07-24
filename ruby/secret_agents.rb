=begin
def add(x, y, z)
    x + y
end
asdf = 2
fdsa = 5
fd = 100000000000000
puts add(asdf,fdsa,fd)
=end

#Pseudocode Encrypt
#- Define each letter of the string
#- If the string contains a space then pass in a space
#- If no space is present set the index of a character to z

#Pseudocode Decrpyt
#- define alphabet as string

=begin
password = "aaabbb"
password[3] = "b"
alpha.index("b") = 1
alpha[1-1] = "a"
-1: subtract 1 from index of alphabet
-2: find index of alphabet character using individual letter of
    original string
=end

def encrypt(password)
    index = 0
    while index < password.length
        if password[index] == " "
            password[index] = " "
        elsif password[index] == "z"
            password[index] = "a"
        else
            password[index] = password[index].next
        end
        index += 1
    end
    return password
end
def decrypt(password)
    index = 0
    alpha = "abcdefghijklmnopqrstuvwxyz"
    while index < password.length
        if password[index] == " "
            password[index] = " "
        else
            index_alpha = alpha.index(password[index])
            password[index] = alpha[index_alpha - 1]
        end
        index += 1
    end
    return password
end
=begin
puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")
puts encrypt(decrypt("swordfish"))
=end
=begin
Pseudocoding:
1. Ask whether they would like to decrypt or encrypt a password
2. Get user input
3. Ask user for password
4. Use the user input to decrypt or encrypt a password
5. print the result
=end
puts "Would you like to encrypt or decrypt a password? (e/d)"
preference = gets.chomp
puts "Password:"
input = gets.chomp
if preference == "e"
  puts encrypt(input)
else
  puts decrypt(input)
end