Pi = 3.14
class Person
	attr_accessor :first_name, :last_name, :fullname
	def initialize(fist_name, last_name)
		@first_name = fist_name
		@last_name = last_name
		@fullname = fist_name + ' ' + last_name
	end
end

class Shape 
end

class Circle < Shape
	attr_accessor :radius
	def initialize(radius)
		@radius = radius
	end
	def calculate_area
		@radius**2 * Pi
	end

	def calculate_circunference
		@radius*2 * Pi
	end
end 

# oscar = Person.new('Oscar', 'Elizondo')
# puts oscar.first_name
# puts oscar.last_name
# puts oscar.fullname