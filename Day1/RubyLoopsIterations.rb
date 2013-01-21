# A ruby program, similar to RubyLoops.rb, but instead uses variable embedment.
# The program prints strings and show the number of iterations in each.
#
# Author: Jose Padilla

# While loop.
i = 1
while i <= 10
	puts "This is sentence number: #{i}"
	i = i + 1
end

# For loop.
i = 1
for i in (1..10)
	puts "This is sentence Loop number: #{i}"
end

# Using Range and each method with blocks.
(1..10).each {|i| puts "This is sentence Each number: #{i}"}

# Another way to loop by using Range and turn it to an array.
(1..10).to_a.each {|i| puts "This is sentence RangeToArray number: #{i}"}
