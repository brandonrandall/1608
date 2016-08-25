class InsertSort

  def insertion_sort(unsorted_numbers)
    # bring in unsorted numbers by
    # going through each number that is put in along with each index
      unsorted = unsorted_numbers.each_with_index do |to_insert, index|
      # need to localize the real index
      actual_index = index - 1
      # while the real index is greater than or equal to 0
      while actual_index >= 0
        # break if the number being inserted is greater than or equal to the unsorted number's index
        break if to_insert >= unsorted_numbers[actual_index]
        # and swap places
        unsorted_numbers[actual_index + 1] = unsorted_numbers[actual_index]
        # and make the actual_index takes away one from the index
        actual_index -= 1
      end
      # the next unsorted number is the number to be inserted
      unsorted_numbers[actual_index + 1] = to_insert
    end
    p unsorted
  end
end
sorter = InsertSort.new
# make an array of numbers to be sorted
# numbers_to_sort = [99,24,36,17,2,5,64]
sorter.insertion_sort([99,24,36,17,2,5,64])
sorter.insertion_sort(["d","k","c","u","f"])
# put the sorted array
# p insertion_sort(numbers_to_sort)

# def insertion_sort(numbers)
#   # create a place for unsorted numbers to go
#   unsorted = [numbers[0]]
#   # whatever number that is put into "to_insert" needs to to be deleted from the numbers array
#   numbers.delete_at(0)
# # every number in numbers array needs to be looped over
#   for i in numbers
#     # the last index needs to have a location
#     final_index = 0
#     # need to compare both numbers as they are brought in
#     while final_index < unsorted.length
#       #break if whatever number that is brought in is = or < the unsorted number and start over
#        if i <= unsorted[final_index]
#         #  insert whatever number into the final_index and break
#          unsorted.insert(final_index, i)
#         break
#         # also if whatever number is equal to the unsorted number is 0
#        elsif final.index == unsorted.length - 1
#         #  insert the last index + 1(right_index) into the next position
#         unsorted.insert(final_index + 1, i)
#         break
#       end
#       final_index += 1
#     end
# end
# unsorted
# end
# to_sort = [88,77,66,55,44,44,33,1]
# p insertion_sort(to_sort)

# class InsertionSort
#
#   def initialize(unsorted)
#     @unsorted = unsorted
#   end
#
#   def unsorted
#     @unsorted
#   end
#
#   def sort
#     #Array that stores sorted numbers
#     sorted_numbers = []
#     #keeping track of position within the array
#     sorting = 0
#     unsorted_numbers = 1
#     #if sorted array is empty, add the first element of the unsorted array to the first array
#     if sorted_numbers.empty?
#       sorted_numbers[sorting] = unsorted[sorting]
#     end
#     #while there is something in the unsorted array
#     while unsorted[unsorted_numbers] != nil
#       #compare the sorting elemenet in first position of the sorting array
#       #to the unsorted elements in position 1 of the unsorted array
#       if sorted_numbers[sorting] < unsorted[unsorted_numbers] && sorted_numbers[sorting + 1].nil?
#         #shovels unsorted_numbers at the end of sorted_numbers
#         sorted_numbers << unsorted[unsorted_numbers]
#         sorted_numbers += 1
#         unsorted_numbers = 0
#       elsif sorted_numbers[sorting] > unsorted[unsorted_numbers]  && sorted_numbers[sorting + 1].nil?
#         #adds the unsorted_number into sorted_numbers in the right place when the element
#         #on the right of the sorting element is empty
#         sorted_numbers.insert(unsorted_numbers -1, unsorted[unsorted_numbers])
#         unsorted_numbers += 1
#         sorting = 0
#       elsif sorted_numbers[sorting] < unsorted[unsorted_numbers]
#         #sorted array "walker"
#         sorting += 1
#       else sorted_numbers[sorting] > unsorted[unsorted_numbers]
#         #adds the unsorted_number in proper place when position to the r of sorted_numbers is not empty
#         sorted_numbers.insert(sorting, unsorted[unsorted_numbers])
#         unsorted_numbers += 1
#         sorting = 0
#       end
#   end
#         sorted_numbers("1,2,3,4,5")
#       end
# end
# class InsertionSort
#    def initialize(unsorted)
#      @unsorted = unsorted
#    end
#
#    def unsorted
#      @unsorted
#    end
#
#    def sort
#      # Array that stores sorted numbers
#      sorted = []
#
#      # Keeping track of position within the array.
#      left_index = 0
#      right_index = 1
#
#      # If the sorted array is empty, add the first element of unsorted array
#      # to the sorted array in position 0.
#      if sorted.empty?
#        sorted[left_index] = unsorted[left_index]
#      end
#
#      while unsorted[right_index] != nil
#        # Compare the element in position 0 (sorted element) of the sorted array
#        # to the element in position 1 (unsorted element) of the unsorted array.
#        if sorted[left_index] < unsorted[right_index] && sorted[left_index + 1].nil?
#          # Places unsorted element at the end of the sorted array.
#          sorted << unsorted[right_index]
#          right_index += 1
#          left_index = 0
#        elsif sorted[left_index] > unsorted[right_index] && sorted[left_index + 1].nil?
#          # Inserts the unsorted element into the sorted array in proper place when
#          # position to the right of the sorted element is empty.
#          sorted.insert(right_index - 1, unsorted[right_index])
#          right_index += 1
#          left_index = 0
#        elsif sorted[left_index] < unsorted[right_index]
#          # Sorted array "walker"
#          left_index += 1
#        else sorted[left_index] > unsorted[right_index]
#          # Inserts the unsorted element in proper place when position to the right of the
#          # sorted element is not empty.
#          sorted.insert(left_index, unsorted[right_index])
#          right_index += 1
#          left_index = 0
#        end
#      end
#      sorted
#    end
#  end
# end
