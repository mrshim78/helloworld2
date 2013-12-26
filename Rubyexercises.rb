#Moti Ahmed


puts "1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value."
myarray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

myarray.each do |num|
puts num
end

puts "2. Same as above, but only print out values greater than 5."

myarray.each do |num2|

	if num2 >5
	puts num2
	end
end

puts "3.Now, using the same array from #2, use the select method to extract all odd numbers into a new array."

puts myarray.select(&:odd?)


puts "4. Append 11 to the end of the array. Prepend 0 to the beginning."

myarray.push(11)
myarray.unshift 0

puts myarray

puts "5. Get rid of 11 And append a 3"

myarray.pop
myarray.push(3)

puts myarray

puts "6. Get rid of duplicates without specifically removing any one value. "

puts myarray.uniq


puts"What the major difference between an Array and a Hash?"

puts "An array is an ordered list of things- 1,2,3,4

A hash is a collection of key/value pairs: moti has a car, picard has a ship"

puts " has in 1.8 vs 1.9"
puts " 1.8 ==>h = {}; h[a] = 1"

puts " 1.9 ==> h = {a:1}"

h = {a:1, b:2, c:3, d:4}

puts h['b'.to_sym]

h[:e] = 2



