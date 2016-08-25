pizza = "pizza"
# array = pizza.chars
real_pizza = pizza[0..-1].upcase
p real_pizza

# def j_names
names = ["John", "Jacob", "Jingle", "Heimer", "Schmidt"]
names.map do |name|
  if name[0].include?("J")
  puts name
end
end
# names_split = names.split(",")
# if names_split.include?("J")
#   puts names
# end
# end
# puts j_names
# def even_or_odd
#   numbers = [1,2,3,4]
#
# numbers.each do |number|
# if number.odd?
#   puts "#{number} is odd"
# else
#   puts "#{number} is even"
# end
# end
#
# end
# puts numbers.even_or_odd

# class Horacio
#
# end
class OddOrEven
#### 15. Given the array `[1,2,3,4]`, return a new array of only the even numbers. Then an array of only the odd numbers.
  # def initialize
  # end
  def odd(numbers)
    numbers.map do |number|
    if number.odd?
    number
    end
    end
  end

  def even(numbers)
    numbers.map do |number|
    if number.even?
    number
    end
    end
  end
end

numbers = [1,2,3,4,5,6,7,8,9,10]
very_odd = OddOrEven.new

p very_odd.odd(numbers).compact
p very_odd.even(numbers).compact
##### 17. Given the following array, sort the list alphabetically by the names (i.e. the first element of each sub-array)

# ```ruby
# names = [
#   ["Horace", "Module 1"],
#   ["Jeff", "Module 1"],
#   ["Rachel", "Module 2"],
#   ["Steve", "Module 4"]
# ]
# ```
# names[0..3].sort
# class Office
#
#   attr_reader :room
#
#   def initialize(room)
#     @room = room
#   end
#
#   def exists?
#     true
#   end
#
#   def window_color
#     "blue"
#   end
#
# end
# numbers = [1,2,3,4]
# numbers1 = numbers.inject(:+)
# puts numbers1
