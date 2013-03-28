#A binary tree.
require './Node'

class BinaryTree
	attr_accessor :root
	def initialize(attribute)
		puts "Root: " + attribute.to_s
		@root = Node.new(attribute, nil, nil)
	end

	def add(value)
		puts "Adding: " + value.to_s
		currentNode = @root
		while nil != currentNode
            if (value < currentNode.data) && (currentNode.left == nil)
                currentNode.left = Node.new(value,nil,nil)
            elsif  (value > currentNode.data) && (currentNode.right == nil)
                currentNode.right = Node.new(value,nil,nil)
            elsif (value < currentNode.data)
                currentNode = currentNode.left
            elsif (value > currentNode.data)
                currentNode = currentNode.right
            else
                return
            end
        end
	end

	# Pre-Order Traversal
    def preOrderTraversal(node = @root)
        return if (node == nil)
        print node.data.to_s + " "
        preOrderTraversal(node.left)
        preOrderTraversal(node.right)
    end

    # In-Order Traversal
    def inOrderTraversal(node =@root)
        return if (node == nil)
        inOrderTraversal(node.left)
        print node.data.to_s + " "
        inOrderTraversal(node.right)
    end

    # Post-Order Traversal
    def postOrderTraversal(node = @root)
        return if (node == nil)
        postOrderTraversal(node.left)
        postOrderTraversal(node.right)
        print node.data.to_s + " "
    end
end

=begin
                    13
                11      14
            7      
        3       9
    1               10
=end

#Tests the BinaryTree
bst = BinaryTree.new(13)
bst.add(11)
bst.add(7)
bst.add(9)
bst.add(10)
bst.add(3)
bst.add(1)
bst.add(14)

# Demonstrating Different Kinds of Traversals
puts "Post-Order Traversal:"
puts bst.postOrderTraversal

puts "Pre-Order Traversal:"
puts bst.preOrderTraversal

puts "In-Order Traversal:"
puts bst.inOrderTraversal