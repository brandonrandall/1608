class Node

attr_accessor :rating, :title, :left, :right

  def initialize( rating, title )
    @rating = rating
    @title = title
    @left = nil
    @right = nil
  end
end

# rocks = 30.times.map{rand(200) + 1}
# puts rocks.join(', ')
# max_rock = 0
#
# rocks.each do |rock|
#   max_rock + rock if max_rock < rock
# end

# def rock_judger(rocks_arr)
#     if rocks_arr.length <= 2  # the base case
#       a = rocks_arr[0]
#       b = rocks_arr[-1]
#     else
#       a = rock_judger(rocks_arr.slice!(0,rocks_arr.length/2))
#       b = rock_judger(rocks_arr)
#     end
#
#     return a > b ? a : b
# end
#
#
# rocks = 30.times.map{rand(200) + 1}
# puts rocks.join(', ')
# puts "Heaviest rock is: #{rock_judger(rocks)}"
