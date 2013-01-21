# A Simple Ruby program that shows the different
# uses of loops to print a string.
# Using while, for, and Ruby-specific loops.
#
# By: Jose Padilla

# Using while loop.
i = 0
while i < 10
	puts "Hello, While Jose"
	i = i + 1
end

# Using until loop.
i = 0
until i < 10
	puts "Hello, Until Jose"
	i = i + 1
end

# Another way of using until along with do.
i = 0
until i == 10 do
	i = i + 1
	puts "Hello, Do Jose"
end

# Using the for loop.
i = 0;
for i in 1..10 
	puts "Hello, For Jose"
end

# Using the times method.
10.times {
	puts "Hello, Times Jose"
}

# Using each with a block iterator.
(1..10).each {|i|
	puts "Hello, Each Jose"
}

# Using each with a do loop.
1.upto(10) do |i|
	puts "Hello, Upto Jose"
end
