require_relative 'node'
require_relative 'tree'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test

  def test_tree_exists
    # skip
    tree = BinarySearchTree.new
    assert_equal tree, tree
  end

  def test_node_exists
    # skip
    node = Node.new(61, "Bill & Ted")
    assert_equal node, node
  end

  def test_node_has_rating_and_title
    # skip
     node = Node.new(61, "Bill & Ted")
     assert_equal 61, node.rating
     assert_equal "Bill & Ted", node.title
  end

  def test_tree_can_insert_nodes
    # skip
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted")
    tree.insert(16, "Jonny English")
    tree.insert(92, "Sharknado")
    tree.insert(50, "Hannibal")
    assert_equal 61, tree.root.rating
    assert_equal 16, tree.root.left.rating
    assert_equal 92, tree.root.right.rating
    assert_equal 50, tree.root.left.right.rating
  end

  def test_inserts_one_on_left
    # skip
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted")
    tree.insert(16, "Johnny English")
    assert_equal 61, tree.root.rating
    assert_equal 16, tree.root.left.rating
  end
  #
  def test_inserts_one_on_right
    # skip
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted")
    tree.insert(92, "Sharknado")
    assert_equal 61, tree.root.rating
    assert_equal 92, tree.root.right.rating
  end

  def test_adds_new_node_correctly
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted")
    tree.insert(16, "Jonny English")
    tree.insert(50, " Hannibal")
    assert_equal 61, tree.root.rating
    assert_equal 16, tree.root.left.rating
    assert_equal 50, tree.root.left.right.rating
  end

  def test_tree_has_score
    tree = BinarySearchTree.new
    tree.insert(16, "Jonny English")
    assert_equal true, tree.include?(16)
    assert_equal false, tree.include?(72)
  end

  def test_nodes_have_depth
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")
    assert_equal 0, tree.depth_of_node(61)
    assert_equal 1, tree.depth_of_node(16)
    assert_equal 1, tree.depth_of_node(92)
    assert_equal 2, tree.depth_of_node(50)
  end

  def test_hightest_score
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted")
    # require 'pry'
    tree.insert(16, "Johnny English")
    # binding.pry
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal 92, tree.max["Sharknado 3"]
  end

  def test_lowest_score
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted")
    # require 'pry'
    tree.insert(16, "Johnny English")
    # binding.pry
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")
    assert_equal 16, tree.min["Johnny English"]
  end

  # def test_can_sort
  #   tree = BinarySearchTree.new
  #   tree.insert(61, "Bill & Ted")
  #   tree.insert(16, "Johnny English")
  #   tree.insert(92, "Sharknado 3")
  #   tree.insert(50, "Hannibal Buress: Animal Furnace")
  #   assert_equal 92
  #   assert_equal 61
  #   assert_equal 50
  #   assert_equal 16
  # end

end
