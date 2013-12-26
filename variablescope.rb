#variable scope

# methods that mutate the caller will change objects. everything else is passed by reference or passed by value. - unless
# the method mutates the caller!


#variable scope - like russian dolls

var1 = "hello"

#mutates the caller
class String
  def clear
    "yaaay mutated"
  end
end



#does not mutate the caller
def addname (var)

	puts "my name is - " + var

end


var2  = var1

addname(var2)

var3 = "hello"

puts var3.clear


