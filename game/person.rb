require_relative 'dice'
class Person
	attr_accessor :name
	def initialize(name)
		@name = name
		@dice = Dice.new
	end
	def roll
		@dice.roll
	end
end