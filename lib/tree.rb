require_relative 'node'
require 'pry'
class BinarySearchTree

attr_accessor :root
  def initialize(root = nil)
    @root = root
  end

  def insert( rating, title )
    node = Node.new( rating, title )
    if @root == nil
      @root = Node.new( rating, title )
      return 0
      else
      second_insert(node)
    end
  end

  def second_insert(node, current = @root)
    if (node.rating < current.rating) && current.left != nil
      current = current.left
      second_insert(node, current)
    elsif (node.rating < current.rating) && current.left.nil?
      current.left = node
    elsif (node.rating > current.rating) && current.right !=  nil
      current.left = node
    elsif (node.rating > current.rating) && current.right
      current = current.right
      second_insert(node, current)
    elsif (node.rating > current.rating) && current.right.nil?
      current.right = node
    end
  end

  def include?( rating, node = @root )
    # if @root == nil
    # node.rating < @root
    until node == nil
    if node.rating < rating
      node = node.right
    elsif node.rating > rating
      node = node.left
    else
      return true
    end
    end
    false
  end

  def depth_of_node(rating)
    first_depth = 0
    node = @root
    until node.rating == rating
      if rating < node.rating
        first_depth += 1
        node = node.left
      else
        first_depth += 1
        node = node.right
      end
    end
    first_depth
  end

  def max
    current_node = self.root
    until current_node.right == nil
        if current_node.rating < current_node.right.rating
          current_node = current_node.right
        else
          current_node
        end

    end
    {"#{current_node.title}" => current_node.rating}
  end

  def min
    current_node = self.root
    until current_node.left == nil
        if current_node.rating > current_node.left.rating
          current_node = current_node.left
        else
          current_node
        end

    end
    {"#{current_node.title}" => current_node.rating}
  end

#   def sort( movies )
#     movies = node.each do |comparison|
#       node.each do |second_comparison|
#         if node.left < node.right
#           node.left, node.right = node.right, node.left
#
#     end
#   end
#   {"#{current_node.title}" => current_node.rating}
#   end
#
end

# tree = BinarySearchTree.new
# tree.insert(61, "Bill & Ted")
# tree.insert(16, "Johnny English")
# tree.insert(92, "Sharknado 3")
# tree.insert(50, "Hannibal Buress: Animal Furnace")
# p tree
