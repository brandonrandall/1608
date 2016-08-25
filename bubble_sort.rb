class BubbleSort

  def sort(letters)
    puts '
    "The ever-evolving wizard said
    "perform the sequence until all letters are in order!!"
    '
    # letters = []
    # input = gets.chomp
    sorted = letters.each_index do |first|
      letters.each_index do |second|
        if letters[first] < letters[second]
          letters[first], letters[second] = letters[second], letters[first]
          "*#{letters.join(', ')}*"
        end
      end
    end

    p sorted
  end

end

sorter = BubbleSort.new
sorter.sort(["g", "f", "e", "d", "c", "b", "a"])

#   def sort(numbers)
#
#       numbers = [11, 9, 10, 4, 6, 7, 2, 3, 8, 1]
#       first_number = numbers.each_index do |first|
#         numbers.each_index do |second|
#           if numbers[first] < numbers[second]
#             numbers[first], numbers[second] = numbers[second], numbers[first]
#             "#{numbers.join(', ')}"
#           end
#         end
#     end
#
#     p first_number
#   end
#   sort()
#
# end
# require 'pry'
# class BubbleSort
#
#   def sort(list)
#     new_list = list.join
#     new_list = new_list.chars
#     # list is unordered; how do I know that?
#     our_loop = true
#     while our_loop
#       our_loop = false
#     (list.length-1).times do |i|
#       # binding.pry
#         if list[i] > list[i+1]
#           # binding.pry
#           list.insert(i + 1, list.delete_at(i))
#           our_loop = true
#         end
#       end
#       # shuffle into temp variable
#       # reverse
#       # take position 1 and reset position
#       # unshift from old array to new array
#       # list.unshift.pop
#       # new_list = list.reverse
#     # p new_list
#   # else
#   end
#   p list
#   end
# end
# # [1,2,3]
# # take position 0 and position 1 and compare them
#     # if pos 0 not less than pos 1, switch them
# #     if list[1] > list[2]
# # end
# # end
# # else leave them
#   # take position 0 and position 1 and compare them
#   # if pos 0 not less than pos 1, switch them
#   # else leave them
# sorter = BubbleSort.new
# sorter.sort(["d", "b", "e", "f", "h", "s", 3, 7, 2, 9])
# sorter.sort(["d", "b", "a", "c"])


# def sort(list)
#   var = list.length
#   loop do
#     swapped = false
#     (var - 1).times do |i|
#     if list[i] > list[i+1]
#       list.insert(i+1, list.delete_at(i))
#       swapped = true
#   end
# end
# break if !swapped
# end
# puts list
# end
# end
# sorter = BubbleSort.new
# sort = sorter.
