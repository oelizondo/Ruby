require_relative 'dice'
require_relative 'person'

turn = 0
exit = false
puts 'Player one: (type name)'
name = gets.chomp
puts 'Player two: (type name)'
name2 = gets.chomp
p1 = Person.new(name)
p2 = Person.new(name2)


while !exit do
	puts "turn number: #{turn + 1}"
	puts "#{p1.name} wins!" if p1.roll > p2.roll
	puts "#{p2.name} wins!" if p2.roll > p1.roll
	puts "Draw!" if p1.roll == p2.roll
	puts 'Do you want to continue? (y/n)'
	ans = gets.chomp
	exit = true if ans == 'n'
	turn += 1 
end