#blackjack game
#Moti Ahmed

def calculate_total(cards)

arr = cards.map{|e| e[1]}
total = 0

arr.each do |value|
	if value.to_i == 0
		total =+10
	elsif value == "A"
		total += 11
	else
		total += value.to_i
	end
end

#correct for Aces case
arr.select { |e| e == "A"}.count.times do
	total =-10 if total > 21
end

total

end
#last value is implicity returned from a function in ruby


#globals - not nice in OO but we are doing a procedural program

$playerName = ''
$gameStatus = '' #is game running or not may not use this but keeping it in for now.
$playerTotal = 0
$dealerTotal = 0


suits = ["H", "D", "S","C"] # hearts diamonds spades clubs
cards = ["A", "K","Q","J","2","3","4","5","6","7","8","9","10"]

deck = suits.product(cards)


# need 2 cards for player and 2 for dealer

#game round
puts "Hi there, what\'s your name"
$playerName = gets.chomp
puts ""
puts "Welcome, #{$playerName}, here we go...."

#start game

deck.shuffle!

#deal out
player=[]
dealer=[]

player << deck.pop
dealer << deck.pop

player << deck.pop
dealer << deck.pop


#show cards
puts "So, #{$playerName} - your cards are " + player.to_s
puts "Dealers cards are " + dealer.to_s

playerTotal = calculate_total(player)
dealerTotal = calculate_total(dealer)


puts "Your new total is #{playerTotal}"

if playerTotal == 21
	puts "Congrats you win"
	exit
end

#player turn

while playerTotal < 21

	puts "What do you want to do? - 1)Hit 2) Stay"

	playerchoice = gets.chomp # no error capture here but that would eb nice to add

	if (playerchoice == "2")
		puts "You chose to stay!"
		break
	end

	#hit

	player << deck.pop
	playerTotal = calculate_total(player)

	puts "Your new total is #{playerTotal}"

	if playerTotal == 21
		puts "Congrats you win"
		exit
	elsif playerTotal >21
		puts "Sorry game over - you didnt make it"
		exit
	end

end



if dealerTotal == 21
	puts "Dealer wins"
	exit
end


while dealerTotal < 17

	puts "Dealer needs new card - dealing new card to dealer"

	#hit

	dealer << deck.pop
	dealerTotal = calculate_total(dealer)

	puts "Dealer new total is #{dealerTotal}"

	if dealerTotal == 21
		puts "Dealer wins"
		exit
	elsif dealerTotal >21
		puts "You win - dealer busted!"
		exit
	end

end

#compare

puts "Dealer"
dealer.each do |card| puts "=> #{card}" end

puts "You"
player.each do |card| puts "=> #{card}" end

if dealerTotal > playerTotal 
	puts "Dealer wins" 
elsif playertotal>dealerTotal 
	puts "You Win"
else puts "its a tie"
end

exit

		




#puts deck.length

