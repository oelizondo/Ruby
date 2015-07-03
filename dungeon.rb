class Dungeon
	attr_accessor :player
	def initialize(player_name)
		@player = Player.new
		@rooms = []
	end
	#Player = Struct.new(:name, :location)
	class Player
		attr_accessor :name, :location
		def initialize(player_name)
			@name = player_name
		end
	end
	#Room = Struct.new(:reference, :name, :description :connections)
	class Room
		attr_accessor :reference, :name, :description, :connections
		def initialize(reference, name, description, connections)
			@reference = reference
			@name = name
			@description = description
			@connections = connections
		end
		def full_description
			puts "You are in #{@description}"
		end
	end
	
	#initializes dungeon
	def start(location)
		@player.location = location
		show_description
	end

	def show_description
		puts find_room_in_dungeon(@player.location).full_description
	end

	def find_room_in_dungeon(reference)
		@rooms.detect {|room| room.reference == reference}
	end

	def add_room(reference, name, description, connections)
		@rooms << Room.new(reference, name, description, connections)
	end

end