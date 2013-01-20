#A class that holds the purpose to support tree structures.
class Node
	#The require accessors.
	attr_accessor :data, :right, :left
	#Initialze the variables.
	def initialize(data, right, left)
		@data = data
		@right = right
		@left = left
	end
end