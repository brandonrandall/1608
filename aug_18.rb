# numbers = [1,2,3,4,5]
#   numbers.map do |number|
#     if number.even?
#     number
#   end
# end.compact

# def find_the_first_even
#   a1 = [1,2,3,4]
# #   a1.each do |num|
# #     return num if num.even?
# #   end
# # end
#
# a1.find do |num|
#   num.even?
# end
# end
# puts find_the_first_even


# def find_all_the_odds
#     numbers = [1,2,3,4,5]
#     result = []
#     numbers.each do |number|
#       if num.odd?
#       result << num
#     end
#     return result
#   end
# end
# puts find_all_the_odds
#
#
# def find_all_the_odds_with_find
#
#     a1 = [1,2,3,4,5]
#     result = []
#     a1.find_all do |number|
#       num.odd?
#   end
# end
# puts find_all_the_odds_with_find


# animals = ["puppy", "cat", "hornet", "fish"]
# animals_chars = animals.find do |animal|
# animals.length > 3
# end
# puts animals_chars

# find/detect
# find_all/select

# def names_starting_with_a
#   names = ["Alexis", "Amanda", "Brooke", "Freda", "Carl", "Arthur"]
#   names_with_a = names.find_all do |name|
#     # name.start_with?("A")
#     name[0] == "A"
#     # name.chars.first == "T"
#   end
# end
# p names_starting_with_a

# numbers = [1,2,3,4,5]
# # def maximum(numbers)
# #   result = numbers.first
# #   numbers.each do |number|
# #     if number > result
# #       result = number
# #     end
# #     result
# #   end
# # or----------
# puts numbers.min
# puts numbers.max

# class Person
#   attr_reader :name, :age
#   def initialize(name, age)
#     @name
#     @age
#   end
# end
#
# people = []
# people << Person.new("Bob", 24)
# people << Person.new("Dan", 26)
# people << Person.new("Zach", 30)
# people_age = people.max_by do |person|
#   person.age
# end
# puts people_age
#or-------
# def max_by(people)
#   result = people.first
#   people.each do |person|
#     result = person if person.age > result.age
#   end
#   return result
# end


# people = [["Bob", 24], ["Dave", 26], ["Zain", 30]]
# result = people.max_by do |person|
#   person[1]
# end
#   puts result.inspect

one_direction = [["Niall", 22], ["Liam", 22], ["Harry", 22], ["Louis", 24], ["Zayn", 23]]
  oldest = one_direction.max_by do |member|
    member[1]
  end
  youngest = one_direction.min_by do |member|
    member[1]
  end
  first_initial = one_direction.min_by do |member|
    member[0]
end


####use find all to print all of the youngest!!!!
puts oldest.inspect
puts youngest.inspect
puts first_initial.inspect
