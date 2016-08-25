# class Fridge
# # end
#
# fridge1 = Fridge.new
# p "Number 1: #{fridge1}"
#
# fridge2 = Fridge.new
# p "Number 2: #{fridge2}"
#
# fridge3 = Fridge.new
# p "Number 3: #{fridge3}"

# require 'pry'
class TV

  attr_reader :make, :year, :color
  def initialize(make = "samsung", year = 2016, color = "black", channels = [24,33,55])
    @make = make
    @year = year
    @color = color
    @channels = channels
    # @plugged_in = plugged_in?

  end

  def make
    @make
  end

  def last_channel_watched
    @channels.last
  end

end
# binding.pry

tv1 = TV.new
p "#{tv1.make} has a #{tv1.year} inch #{tv1.color} monitor where i watched #{tv1.last_channel_watched}"

tv2 = TV.new
p "#{tv1} has a 100 inch monitor"

tv3 = TV.new
p "#{tv1} has a 24 inch monitor"

# class Person
#     def initialize(color, gender)
#
# end
