# A Ruby program that creates a simple tree data structure by using
# a simply interface. For example:
# 		{'root'=> {'node1'=>{'node1child1'=>{},'node1child2'=>{}}, 'node2'=>{'node2child1'=>{},'node2child2'=>{}}}}
# Author: Jose Padilla

# Create the class.
class Node
	# Initiate accesors.
	attr_accessor :children, :nodeName

	# Define the initialize function that accepts
	# a hash as a parameter.
	def initialize(tree)
		@children = []
		@nodeName = tree.keys[0]
		children_tree = tree.values[0]
		children_tree.each{|k, v| children.push(Node.new({k => v}))}
	end

	# Define a function that visits all the nodes in the hash tree.
	def visit_all(&block)
		# Call the visit function.
		visit &block
		# Recursively do this to all of the nodes.
		children.each {|node| node.visit_all &block}
	end

	# A simple function the returns the call.
	def visit(&block)
		block.call self
	end
end

# Create a test tree and test the visit_all function.
#tree = {"grandpa" => {"dad" => {"child1" => {},"child2" => {}},"uncle" => {"child3" => {},"child4" => {}}}}
tree = {'root'=> {'node1'=>{'node1child1'=>{},'node1child2'=>{}}, 'node2'=>{'node2child1'=>{},'node2child2'=>{}}}}
Node.new(tree).visit_all {|node| puts "Visiting " + node.nodeName}
