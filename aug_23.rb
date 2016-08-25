# require "pry"
# class Mather
# def initialize(num)
#   @num = num
# end
#
# def calculate
#   puts "I start with #{@num} and i have not calculated anything yet"
#   doubled = doubler(@num)
#   squared = squarer(doubled)
# end
#
# def doubler(num)
#   puts "num is currently #{num} and this is the doubler method"
#   puts "Me double"
#   # binding.pry
#   num * 2
# end
#
# def squarer(num)
#   puts "num is currently #{num} and this squares numbers"
#   puts "Me sqaring"
#   num * num
# end
#
#
#
# end
#
# math = Mather.new(9)
# puts math.calculate
city = {"Denver" =>["40 N", "104 W"],
        "Zurich" =>["47 N", "9 E"],
        "Ciudad_Bolivar" =>["8 N", "64 W"],
        "Tokyo" =>["36 N", "140 E"],
        "Machu_Pichu" =>["13 S", "73 W"]
      }
p city["Denver"][0]
# p city.keys.each_slice((city.size/2.0)).to_a
# p city.values




# whatever_city = { "city" => [71, 44]}
#
# if the key of the lat long hash is a city then put the value into an array
#   where I can sort it
#
# denver = {"denver" => [39,105]}
# rio = {"rio", [-23, -43]}
#
# how do we proplerly pull out the correct value from nested array
#
# need to include negatives based on location rel to 0s/0w
#
#   how can we make sure that only the lat is returned for each array
  #
  #
  # if we can succesfully retrieve the lat for each collections,
  #   how do i return the key

# location = latitude + longitude
#find the pair that has the hightest latitude
