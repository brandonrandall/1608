gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'test/unit'
require_relative './bubble_sort.rb'

class BubbleSortTest < Minitest::Test
  def test_bubble_sort_exists
    bubble = BubbleSort.new
    assert_equal ["g", "f", "e", "d", "c", "b", "a"], bubble.sort
  end
end
