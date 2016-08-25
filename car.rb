class Car

  attr_accessor :color, :wheel_count, :started

  def initialize
    @started = false
  end

  def horn
    "BEEEEEP!"
  end

  def drive(distance)
    "I'm doin #{distance} mph"
  end

  def which_color
    "So if you a #{color} blur, that's me rollin"
  end
  #create a method that ids started or not
  def start
      @started = true
      # dont start the car if its already started
      puts "VRoom VRoom"
    # else # the card is not started
      # @started = true
    end
  end


end

my_car = Car.new
puts my_car.horn
puts my_car.drive(80)
# puts my_car.which_color("magenta")
my_car.color = 'green'
puts my_car.which_color
my_car.wheel_count = 18
puts "This ride is sitting on #{my_car.wheel_count} wheels"

my_second_car = Car.new
my_car.wheel_count = 2
puts "My second car is on #{my_car.wheel_count}'s'"

my_car.start
