# Print the contents of an array of sixteen numbers, four numbers at a time, using just each.
#
# Author: Jose Padilla

# A possible solution.
a = (1..16).to_a
a.each {|i| i % 4 == 0 ? (puts i) : (print i, ", ")}
print "\n"

# The above can be turned to a single line of code.
(1..16).each {|i| i % 4 == 0 ? (puts i) : (print i, ", ")}
print "\n"

# The above can be changed to be more readable code.
(1..16).each do |index|
	if index % 4 == 0
		puts index
	# Keeps index in the same scope. Otherwise previous index will be printed.
	elsif index != 4
		print index, ", "
	end
end
