#A really simple ruby program that takes
#arguments and prints them out with a "Hello, [arg]".
#
#Author: Jose Padilla

args = ARGF.argv
args.each {|names| print "Hello, #{names}!\n"}
print "Welcome to the World of Ruby!\n"
