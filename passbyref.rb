#Pass by reference vs value

#function that does not mutate the caller

def doesnotmutate (arr)

arr.each {|element| puts element, "--"}

end


def mutatescaller (arr)

arr.uniq!

end

outer_array = [1,2,2,3,3,4,5,5]

puts "without function mutating caller"
doesnotmutate(outer_array)



puts "mutated"
mutatescaller(outer_array)

puts outer_array
