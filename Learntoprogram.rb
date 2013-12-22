puts "hello there"
puts "here is some code output from chapter 2 - 9 of the learn to program book"
puts "==============================="


puts 3+5
puts 'You\'re swell!'

puts "oh my gosh every variable points to an object..its a pointer! so wait what does this mean?"
my_own_var = 'just another ' + 'string'
puts my_own_var
my_own_var = 5 * (1+2)
puts my_own_var

puts "so everything is an..object?!"

3.times do
  puts "sidenote - and loops are simple!"
end

puts "everything is an object - and i can use a functin to convert the type of an object between a string and an integer"

var1 = 2
var2 = '5'
puts var1.to_s + var2
puts var1 + var2.to_i


favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'
puts favorites[0]
puts favorites.last
puts favorites.length

puts "lets remove the last one - pop!"
favorites.pop
puts favorites
puts favorites.length

def firstname name

puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'

end

puts 'Hello there, and what\'s your name?'
getthename = gets.chomp
firstname getthename

