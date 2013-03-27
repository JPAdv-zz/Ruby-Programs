# A ruby program that reads a text file and outputs whether a phrase has been found.
def grep(expr, file)
	# Get the file and find the expression.
	File.foreach(file) { |line|  
		# By using a regular expression, it is easy to find the word in the line.
		puts "Line #{$.}: #{line}"if line =~ /#{expr}/
	}
end

# Test the grep method.
grep('Alice', "./AliceShort.txt")