# REDO THIS COMPLETELY PRY BASED!!!!!!
# Type out what youre seeing in the examples before anything else!!!!
# Use TDD TOO!!!

# create a list of numbers to sort
# need to be able to count the place of each number
def merge_sort(numbers)

  if numbers.length <= 1 #if the index is less than 1 or equal to 1
    numbers              # put the number
  else                  #but if the index is > 1
    middle = (numbers.length/2)#divide the numbers to split in two
    #when two sides are creates, the left side needs to take in the
    #numbers from the left then go thru them to the end
    #after that, id the right position of each number
    left_side = merge_sort(numbers[0..middle -1])
    right_side = merge_sort(numbers[middle..-1])
    # bring all of the numbers back together
    #create a method for that
    merge(left_side, right_side)
  end
end
#how is the merge method going to bring in both numbers from each
#side?
def merge(left_number, right_number)
  if left_number.empty?#if the left position is empty, put the
    right_number       # number on the opposite side
  elsif right_number.empty?#if the right position is empty, put the
    left_number           # number on the opposite side
  elsif left_number.first < right_number.first
    #if the first left is less than the first right then
    #put the first number on the left with the other numbers
    [left_number.first] + merge(left_number[1..-1], right_number)
  else#or put the first number on the right with the other numbers
    [right_number.first] + merge(left_number, right_number[1..-1])
  end
end

to_sort = [21,10,18,33,45,72,97,87]
p merge_sort(to_sort)




#
# class Merge_sort
#
#   def continual_split(list)
#     return list if list.size <= 1
#     midpoint_of_numbers = list.length / 2
#     left = numbers[0..(midpoint_of_numbers - 1)]
#     right = numbers[midpoint_of_numbers..(numbers.length-1)]
#     merge_sort(continual_split(left), continual_split(right))
#   end
#
#   # a = numbers_split.map do |set|
#   #   if set[0] > set[1]
#   #     [set[1], set[0]]
#   #   else
#   #     [set[0], set[1]]
#   #   end
#   # end
#   def merge_sort(left, right)
#     sorted = []
#     until left.empty? || right.empty?
#       if left.first < right.first
#         sorted << left.shift
#       else
#         sorted << right.shift
#       end
#     end
#     sorted(left) + sorted(right) + result
#   end
#
# end
#
# merger = Merge_sort.new
# numbers = [2,0,1,3]
# puts continual_split(numbers)
