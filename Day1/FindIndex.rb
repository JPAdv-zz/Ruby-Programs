# A Ruby program that simply finds the index of a word.
# 
# Author: Jose Padilla

# One way to solve it is by creating a variable and calling its index method.
varname = "Hello, Ruby"
puts varname.index("Ruby")

# This is a single line solution.
puts "Hello, Ruby".index("Ruby")

# Another way by combining double quotes, single quotes, and coverting from a
# number to a string. 
print 'Hello, Ruby'.index('Ruby').to_s + ": Is a string not a number.\n"
