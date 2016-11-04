class Player	

		attr_accessor :health, :name

	 	def initialize(name, health)
	 		@health = health
	 		@name = name
	 	end

	def to_s
 			"Ich bin #{@name} mit einem Wert von #{@health + name.length}"
 			#@health + @name.length
	end

	def blam
 			@health -= 10
 			puts "#{@name} wurde um 10 geblamt!!! Aktueller stand:#{@health}"
 		end

		def w00t
			@health += 10
			puts "#{@name} wurde um 10 gew00ted aktueller Stand: #{@health}"
		end
		
		def score
			@health + @name.length
			
		end
	end

		player1 = Player.new('Theo',20)
		puts player1.to_s