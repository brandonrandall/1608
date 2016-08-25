# array = ["Taylor", "Gwenith", "Scarlett", "Jessica", "Me"]
#
# counter = 0
# while counter < 5
#   p array[counter]
#   counter += 1
# end
#
# array.each do |name|
#   p name
# end
#
# array.each do |name|
#   p "#{name} is #{name.length} letters long"
# end
#
# numbers = [1,2,3,4,5]
#
# numbers.each do |number|
#   p number * 2
#   # if number.even? = true
#   #   puts number
#   # end
# end

# names = ["Alice Wonderland", "Scott Skiles", "Shirley Temple"]
#
#   names.each do |name|
#     p name.split[0] + " " + name.split[1] #or .first
#     p name.split[0][0] + "." + name.split[1][0] + "."
#     #chars
#   end

names = ["Bobby Brown", "Whitney Houston", "Bobbi Christina"]
    result = []
    names.each do |name|
      puts result << name.upcase
    end
# map/collect
result = names.map do |name|
  puts name.length
end

nums = [1,2,3,4,5]
doubles = nums.map do |num|
  puts num * 2
end

result = names.map { |name| name.length }
puts result
