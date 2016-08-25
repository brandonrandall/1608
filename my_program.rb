# class Sample
#   def hello
#     puts "Hello, Brandon!"
#   end
# # puts "enter a number and I will repeat it"
# # input = gets.to_i
# # puts input
# # puts input.class
#   def do_it_again
#     5.times do
#       puts "Raul The Great !!"
#       hello
#     end
#   end
# end
#
# s = Sample.new
# s.do_it_again
# 5.times do
#   puts "Hello, World!" + " and " + "Goodbye world"
#   puts "Here are the instructions"
#   player_count = 4
#   puts " There are #{player_count} players in the game"
# end
#
# 5.times {
#   puts "Hello, world" + " and " + "goodbye"
# }
# 5.times do |i|
#   puts "Hello, World! This is the first round #{i**2}."
# end
owners = ["Jon", "Beth", "Anna"]
pets = ["Fido", "Stinky", "Bones"]

owners_and_pets = owners.zip(pets)

puts owners_and_pets

owners_and_pets.each do |owner, pet|
  # owner = owner_and_pet[0]
  # pet = owner_and_pet[1]
  puts "#{owner}'s pet is #{pet}"
end
