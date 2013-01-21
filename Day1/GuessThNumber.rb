# A ruby program that picks a random number. Lets the user
# guess the number and prompts the user whether the
# guess was high or low.
#
# Author: Jose Padilla

# A simple Welcome Screen.
print "Welcome to the Guessing Game, but first,\nwhat range do you prefer?\n"
print "Note: Make sure that you seperate the numbers with a space (i.e. 1-10).\n"

# Gets the input from the user.
input = gets().chomp.split('-').map(&:to_i)

# Primpts the range the user asked.
puts "I am thinking of a number from #{input[0]}-#{input[1]}."
puts "Can you guess my number?\n"

# Generate the random number.
randNum  = rand(input[1]) + 1
inputNum = gets().to_i
numOfTries = 1

# Determine wether the number has been guessed.
while (inputNum != randNum)

      if randNum < inputNum
      	puts "Sorry, but your guess was too high."
      else
      	puts "Sorry, but your guess was too low."
      end

      inputNum = gets().to_i
      numOfTries = numOfTries + 1
end

# Well done good sir!
puts "Congratulations! You guessed that my number was #{randNum}!"
puts "It only took you #{numOfTries} time(s)."